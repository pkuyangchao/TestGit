package com.yc.movie.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.hadoop.yarn.webapp.hamlet.Hamlet.VAR;
import org.apache.ibatis.reflection.wrapper.BaseWrapper;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.AlipayApiException;
import com.alipay.api.internal.util.AlipaySignature;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yc.movie.alipay.config.AlipayConfig;
import com.yc.movie.bean.Cinema;
import com.yc.movie.bean.Cinemaseat;
import com.yc.movie.bean.Hitmovie;
import com.yc.movie.bean.Play;
import com.yc.movie.bean.Ticked;
import com.yc.movie.bean.User;
import com.yc.movie.service.CinemaService;
import com.yc.movie.service.CinemaseatService;
import com.yc.movie.service.HitmovieService;
import com.yc.movie.service.PlayService;
import com.yc.movie.service.TickedService;
import com.yc.movie.service.UserService;
import com.yc.movie.utils.Constants;
import com.yc.movie.utils.MatrixToImageWriter;
import com.yc.movie.utils.Msg;

@Controller
public class TickedController {

	@Autowired
	HitmovieService hitmovieService;
	
	@Autowired
	CinemaService cinemaService;
	
	@Autowired
	PlayService playService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	TickedService tickedService;
	
	@Autowired
	CinemaseatService cinemaseatService;
	
	@RequestMapping("/ticked")
	public String ticked(@RequestParam("hitmovieId")Integer hitmovieId,Model model) {
		Hitmovie hitmovie = hitmovieService.selectByMovieId(hitmovieId);
		model.addAttribute("hitmovie", hitmovie);
		List<Cinema> cinemas = cinemaService.getAll();
		model.addAttribute("cinemas", cinemas);
		return "hitmovie/selectCinema";
	}
	
	@RequestMapping("/play")
	public String play(@RequestParam("hitmoviveId")Integer hitmovieId,
			@RequestParam("cinemaId")Integer cinemaId,Model model) {
		List<Play> plays = playService.selectByMovieIdAndCinemaId(cinemaId, hitmovieId);
		model.addAttribute("plays", plays);
		Hitmovie hitmovie = hitmovieService.selectByMovieId(hitmovieId);
		model.addAttribute("hitmovie", hitmovie);
		Cinema cinema = cinemaService.selectByCinemaId(cinemaId);
		model.addAttribute("cinema", cinema);
		return "hitmovie/selectPlay";
	}
	
	@RequestMapping("/seat")
	public String seat(@RequestParam("movieId")Integer movieId,
			@RequestParam("palyId")Integer playId,Model model) {
		Hitmovie hitmovie = hitmovieService.selectByMovieId(movieId);
		Play play = playService.selectByPlayId(playId);
		
		model.addAttribute("hitmovie", hitmovie);
		model.addAttribute("play",play);
		
		Integer hallId = play.getHallId();
		List<Cinemaseat> cinemaseats = cinemaseatService.selectByHall(hallId);
		
		 JSONArray jsonArray = new JSONArray();  
	        for (Cinemaseat cinemaseat:cinemaseats)  
	        {  
	            JSONObject json = new JSONObject();  
	            json.put("seatId",cinemaseat.getSeatId());  
	            json.put("hallId",cinemaseat.getHallId());  
	            json.put("seatRow",cinemaseat.getSeatRow());  
	            json.put("seatColumn",cinemaseat.getSeatColumn());  
	            json.put("seatState",cinemaseat.getSeatState());  
	            json.put("cinemahall",cinemaseat.getCinemahall()); 
	            
	            jsonArray.put(json);  
	        }  
	        model.addAttribute("cinemaseats", jsonArray);
		
		return "hitmovie/selectSeat";
	}
	 
	
	@ResponseBody
	@RequestMapping("/alipay")
	public Msg alipay(@RequestParam("price")Float price,
			@RequestParam("tickedSeats")String tickedSeats,
			@RequestParam("play")Integer play,@RequestParam("tradeno")String tradeno,HttpSession session,Model model) {
		
		List<Cinemaseat> cinemaseats = new ArrayList<Cinemaseat>();
		
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null!=user) {
			Date date = new Date();
			DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					
			Play play2 = playService.selectByPlayId(play);
			if(tickedSeats.contains("-")){
				String[] str_ids = tickedSeats.split("-");
				//组装id的集合
				for (String string : str_ids) {
					String[] seat = string.split("_");
					Cinemaseat cinemaseat = cinemaseatService.selectByHallAndSeat(Integer.parseInt(seat[0]), Integer.parseInt(seat[1]), play2.getHallId());
					cinemaseat.setSeatState("不可用");
					cinemaseatService.updateCinemaseat(cinemaseat);
					
					Ticked ticked = new Ticked();
					ticked.setTickedPlay(play);
					ticked.setTickedPrice(price);
					ticked.setTickedUser(user.getUserId());
					ticked.setTickedSeat(cinemaseat.getSeatId());
					ticked.setTickedTime(df.format(date));
					ticked.setTickedFlag(0);
					ticked.setTickedCode(tradeno);
					ticked.setHitmovie(play2.getHitmovie());
					ticked.setMovieId(play2.getPlayMovie());
					tickedService.insertTicked(ticked);	
					
					cinemaseats.add(cinemaseat);
				}
			}else{
				String[] seat = tickedSeats.split("_");
				Cinemaseat cinemaseat = cinemaseatService.selectByHallAndSeat(Integer.parseInt(seat[0]), Integer.parseInt(seat[1]), play2.getHallId());
				cinemaseat.setSeatState("不可用");
				cinemaseatService.updateCinemaseat(cinemaseat);
				
				Ticked ticked = new Ticked();
				ticked.setTickedPlay(play);
				ticked.setTickedPrice(price);
				ticked.setTickedUser(user.getUserId());
				ticked.setTickedSeat(cinemaseat.getSeatId());
				ticked.setTickedTime(df.format(date));
				ticked.setTickedFlag(0);
				ticked.setTickedCode(tradeno);
				ticked.setHitmovie(play2.getHitmovie());
				ticked.setMovieId(play2.getPlayMovie());
				tickedService.insertTicked(ticked);	
				
				cinemaseats.add(cinemaseat);
			}
			
			String seat="";
			for (Cinemaseat cinemaseat : cinemaseats) {
				seat += cinemaseat.getSeatRow()+"行"+cinemaseat.getSeatColumn()+"列"+"、";
			}
			seat= seat.substring(0, seat.length()-1);
			
			return Msg.success().add("play", play2).add("price", price)
					.add("seat", seat);
		}
		
		return Msg.fail();
		
	}
	
	@RequestMapping("/alipayjsp")
	public String alipayjsp() throws UnsupportedEncodingException {
		return "alipay/alipay.trade.page.pay";
	}

	@RequestMapping("/userhomealipay")
	public String userhomealipay(@RequestParam("price")String price,
			@RequestParam("tickedId")Integer tickedId,
			HttpServletRequest request,Model model) {
		
		Date vNow = new Date();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		String sNow = "";
		sNow += vNow.getYear();
		sNow += vNow.getMonth()+1;
		sNow += vNow.getDate();
		sNow += vNow.getHours();
		sNow += vNow.getMinutes();
		sNow += vNow.getSeconds();
		
		System.out.println(price+","+tickedId);
		request.setAttribute("WIDtotal_amount", price);
		request.setAttribute("WIDout_trade_no", sNow);
		request.setAttribute("WIDsubject", "测试");
		request.setAttribute("WIDbody", "");
		
		Ticked ticked = tickedService.selectByTickedId(tickedId);
		ticked.setTickedFlag(1);
		ticked.setTickedCode(sNow);
		ticked.setTickedEndtime(df.format(vNow));
		tickedService.updateTicked(ticked);
		
		return "alipay/alipay";
	}
	@RequestMapping("/return_url")
	public String return_url(HttpServletRequest request,HttpSession session,Model model) throws UnsupportedEncodingException, AlipayApiException {
		
		Map<String,String> params = new HashMap<String,String>();
		Map<String,String[]> requestParams = request.getParameterMap();
		for (Iterator<String> iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i]
						: valueStr + values[i] + ",";
			}
			//乱码解决，这段代码在出现乱码时使用
			valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		boolean signVerified = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, AlipayConfig.charset, AlipayConfig.sign_type); //调用SDK验证签名

		//——请在这里编写您的程序（以下代码仅作参考）——
		if(signVerified) {
			//商户订单号
			String out_trade_no = new String(request.getParameter("out_trade_no").getBytes("ISO-8859-1"),"UTF-8");
		
			//支付宝交易号
			String trade_no = new String(request.getParameter("trade_no").getBytes("ISO-8859-1"),"UTF-8");
		
			//付款金额
			String total_amount = new String(request.getParameter("total_amount").getBytes("ISO-8859-1"),"UTF-8");
			
			
			List<Ticked> tickeds = tickedService.selectByTickedCode(out_trade_no);
			session.setAttribute(Constants.USER_SESSION, tickeds.get(0).getUser());
			
			Date date = new Date();
			DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String path = request.getSession().getServletContext().getRealPath("/mymovie/tickedTitles/");
			String newFileName= System.currentTimeMillis()+".png";
			File logoFile = new File("G:\\eclipse\\workspace\\mymovie\\src\\main\\webapp\\static\\images/zb-logo.jpg");
		    File QrCodeFile = new File(path+newFileName);
		    File localFile = new File("G:\\eclipse\\workspace\\mymovie\\src\\main\\webapp\\static\\mymovie\\tickedTitles\\"+newFileName);
		    String hitmovieName = hitmovieService.selectByMovieId(tickeds.get(0).getMovieId()).getMovieName();
		    String url = "电影名称："+hitmovieName+"\n"+"购票时间："+tickeds.get(0).getTickedTime()
		    		+"\n"+"播放时间："+tickeds.get(0).getPlay().getPlayTime();
		    String note = "购票信息";
		    MatrixToImageWriter.drawLogoQRCode(logoFile, QrCodeFile, url, note);
			String seat = "";
		    for (Ticked ticked : tickeds) {
				seat += ticked.getCinemaseat().getSeatRow()+"排"+ticked.getCinemaseat().getSeatColumn()+"座	";
				ticked.setTickedEndtime(df.format(date));
				ticked.setTickedFlag(1);
				ticked.setTickedImg("\\mymovie\\tickedTitles\\" + newFileName);
				tickedService.updateTicked(ticked);
			}
			model.addAttribute("tickedImg", tickeds.get(0).getTickedImg());
			model.addAttribute("price", total_amount);
			model.addAttribute("tradeno", trade_no);
			model.addAttribute("ticked", tickeds.get(0));
			model.addAttribute("seat", seat);
		}else {
			System.out.println("验签失败");
		}
		return "hitmovie/userticked";
	}
	
	@RequestMapping("/order")
	public String order(HttpSession session,Model model) {
		
		List<Ticked> tickeds2 = new ArrayList<Ticked>();
		
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		tickeds2 = tickedService.selectByUserId(user.getUserId());
		
		model.addAttribute("tickeds2", tickeds2);
		return "alipay/return_url";
	}
	
	@ResponseBody
	@RequestMapping("/delticked")
	public Msg delticked(@RequestParam("tickedId")Integer tickedId){
		//批量删除
//		if(ids.contains("-")){
//			List<Integer> del_ids = new ArrayList<>();
//			String[] str_ids = ids.split("-");
//			//组装id的集合
//			for (String string : str_ids) {
//				del_ids.add(Integer.parseInt(string));
//			}
//		tickedService.deleteBatchTicked(del_ids);
//		}else{
//			Integer id = Integer.parseInt(ids);
//			tickedService.deleteTicked(id);
//		}
		
		tickedService.deleteTicked(tickedId);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping("/deletetickeds")
	public Msg deletetickeds(@RequestParam("trade_no")String trade_no) {
		List<Ticked> tickeds = tickedService.selectByTickedCode(trade_no);
		for (Ticked ticked : tickeds) {
			Cinemaseat cinemaseat = cinemaseatService.selectById(ticked.getTickedSeat());
			cinemaseat.setSeatState("可用");
			cinemaseatService.updateCinemaseat(cinemaseat);
		}
		tickedService.deleteTickedByTrade(trade_no);
		
		return Msg.success();
	}
	
	@RequestMapping("/orderlist")
	public String orderlist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 100);
		List<Ticked> users = tickedService.getAll();
		PageInfo<Ticked> page = new PageInfo<Ticked>(users, 100);
		model.addAttribute("pageInfo", page);
		return "order/orderlist";
	}
	
}
