package com.yc.movie.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsResponse;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yc.movie.bean.BrowsingHistory;
import com.yc.movie.bean.Hitmovie;
import com.yc.movie.bean.Movie;
import com.yc.movie.bean.Ratings;
import com.yc.movie.bean.Ticked;
import com.yc.movie.bean.User;
import com.yc.movie.recommender.MyItemBasedRecommender;
import com.yc.movie.recommender.MyUserBasedRecommender;
import com.yc.movie.service.BrowsingHistoryService;
import com.yc.movie.service.HitmovieService;
import com.yc.movie.service.MovieService;
import com.yc.movie.service.RatingsService;
import com.yc.movie.service.TickedService;
import com.yc.movie.service.UserService;
import com.yc.movie.utils.Constants;
import com.yc.movie.utils.Msg;
import com.yc.movie.utils.SmsServe;

import Decoder.BASE64Decoder;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@Autowired
	MovieService movieService;
	
	@Autowired
	BrowsingHistoryService browsingHistoryService;
	
	@Autowired
	RatingsService ratingsService;
	
	@Autowired
	TickedService tickedService;
	
	@Autowired
	HitmovieService hitmovieService;
	
	@RequestMapping("/userindex")
	public String userindex(Model model) {
		List<Movie> movies1 = movieService.sortByHot();
		List<Movie> movies2 = movieService.sortByGrade();
		List<Movie> movies3 = movieService.sortByTime();
		List<Movie> movies4 = movieService.selectByKeyword("动作");
		List<Movie> movies5 = movieService.selectByKeyword("美国");
		List<Hitmovie> hitmovies = hitmovieService.getAll();
		model.addAttribute("gradeMovie14", movies2);
		model.addAttribute("hotMovie14", movies1);
		model.addAttribute("timeMovie14", movies3);
		model.addAttribute("yugao", movies4);
		model.addAttribute("zhoumo", movies5);
		model.addAttribute("hitmovie", hitmovies);
		return "user/index";
	}
	
	@ResponseBody
	@RequestMapping("/userlogin")
	public Msg userlogin(@RequestParam("userEmail")String userEmail,
			@RequestParam("userPassword")String userPassword,HttpSession session) {
		User user = userService.userlogin(userEmail, userPassword);
		if (user!=null) {
			session.setAttribute(Constants.USER_SESSION, user);
			session.setAttribute("userId", user.getUserId());
			return Msg.success();
		}
		return Msg.fail().add("fail", "登录失败");
	}
	
	@RequestMapping("/userlogout")
	public String userlogout(HttpSession session) {
		session.removeAttribute(Constants.USER_SESSION);
		return "redirect:userindex";
	}
	
	@RequestMapping("/userlist")
	public String userlist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model,@RequestParam(value="userSearch",required=false)String userSearch) {
		PageHelper.startPage(pn, 100);
		List<User> users = userService.getAll(userSearch);
		System.out.println(users);
		PageInfo<User> page = new PageInfo<User>(users, 100);
		model.addAttribute("pageInfo", page);
		return "user/userlist";
	}
	
	@RequestMapping("/useradd")
	public String useradd() {
		return "user/useradd";
	}
	
	@ResponseBody
	@RequestMapping("/usersave")
	public Msg usersave(User user) {
		userService.userSave(user);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/user/{ids}",method=RequestMethod.DELETE)
	public Msg deleteUser(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			userService.deleteBatchUsers(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			userService.deleteUser(id);
		}
		return Msg.success();
	}
	
	@RequestMapping("/userchangepassword")
	public String userchangepassword(@RequestParam("userId")Integer userId,Model model) {
		User user = userService.selectByUserId(userId);
		model.addAttribute("user",user);
		return "user/userchangepassword";
	}
	
	@ResponseBody
	@RequestMapping("/userpassword")
	public Msg userpassword(@RequestParam("userId")Integer userId,
			@RequestParam("newpassword")String newpassword) {
		User user = userService.selectByUserId(userId);
		user.setUserPassword(newpassword);
		userService.updateUser(user);
		return Msg.success();
	}
	
	@RequestMapping("/userhome")
	public String userhome(HttpSession session,Model model) {
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null != user) {
			List<BrowsingHistory> browsingHistories = browsingHistoryService.selectByUserId(user.getUserId());
			List<Ratings> ratings = ratingsService.selectByUserId(user.getUserId());
			model.addAttribute("browsingHistories", browsingHistories);
			model.addAttribute("ratings", ratings);
			
			List<Ticked> tickeds2 = new ArrayList<Ticked>();
			
			tickeds2 = tickedService.selectByUserId(user.getUserId());
			
			model.addAttribute("tickeds2", tickeds2);
		}
		return "user/userhome";
	}
	
	@RequestMapping("/recommend")
	public String recommend(HttpSession session,Model model) {
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null != user) {
			List<Ratings> ratings = ratingsService.selectByUserId(user.getUserId());
			if (null==ratings) {
				List<Movie> movies = movieService.sortByGrade();
				model.addAttribute("recommendMovieInfo3", movies);
			}
			else {
			//推荐电影的List
			List<RecommendedItem> recommendation = null;
			List<RecommendedItem> recommendation2 = null;
			MyUserBasedRecommender mubr = new MyUserBasedRecommender();
			//基于用户的推荐
			recommendation = mubr.userBasedRecommender(user.getUserId(),10);
			
			MyItemBasedRecommender mibr = new MyItemBasedRecommender();
			//基于内容的推荐
			recommendation2 = mibr.myItemBasedRecommender(user.getUserId(),25);
			
			//拿到推荐的电影的详细信息
			List<Movie> recommendMovieInfo = movieService.getMoviesByMovieId(recommendation);
			List<Movie> recommendMovieInfo2 = movieService.getMoviesByMovieId(recommendation2);
			
			model.addAttribute("recommendMovieInfo", recommendMovieInfo);
			model.addAttribute("recommendMovieInfo2", recommendMovieInfo2);
			}
		}
		return "user/recommend";
	}
	
	@ResponseBody
	@RequestMapping("/conformPassword")
	public Msg conformPassword(@RequestParam("conformPassword")String conformPassword,
			@RequestParam("userPassword")String userPassword) {
		if (conformPassword.equals(userPassword)) {
			return Msg.success();
		}
		return Msg.fail().add("va_msg", "密码不一致");
	}

	@ResponseBody
	@RequestMapping("/userexchangeTitle")
	public Msg userexchangeTitle(HttpServletRequest request,HttpSession session,@RequestParam("img")String img){  
		//String path = request.getSession().getServletContext().getRealPath("/mymovie/userTitle/");
		User user= (User) session.getAttribute(Constants.USER_SESSION);
		if (null!=user) {
		String path = "G:\\eclipse\\workspace\\mymovie\\src\\main\\webapp\\static\\mymovie\\userTitle";
		String newFileName= System.currentTimeMillis()+".jpg";
		// 通过base64来转化图片
				img = img.replaceAll("data:image/jpeg;base64,", ""); 
				img=img.replace(" ", "+");
		        BASE64Decoder decoder = new BASE64Decoder();
		        // Base64解码      
		        byte[] imageByte = null;
		        try {
		            imageByte = decoder.decodeBuffer(img);      
		            for (int i = 0; i < imageByte.length; ++i) {      
		                if (imageByte[i] < 0) {// 调整异常数据      
		                    imageByte[i] += 256;      
		                }      
		            }      
		        } catch (Exception e) {
		             e.printStackTrace(); 
		        }    
		        try {
					FileUtils.writeByteArrayToFile(new File(path, newFileName), imageByte);
				} catch (IOException e) {
					e.printStackTrace();
				}
		        
		        String blogPicture =  "\\mymovie\\userTitle\\" + newFileName;
			
				user.setUserTitle(blogPicture);
				userService.updateUser(user);
				return Msg.success();
				
		}else {
			return Msg.fail();
		}
	}  
	
	@ResponseBody
	@RequestMapping("/oldPhoneCheck")
	public Msg oldPhoneCheck(@RequestParam("oldPhone")String oldPhone,HttpSession session) {
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null!=user) {
			if (oldPhone.equals(user.getUserPhone())) {
				return Msg.success();
			}
			return Msg.fail().add("va_msg", "电话号不一致");
		}
		return Msg.fail().add("va_msg", "用户未登录");
	}
	
	@ResponseBody
	@RequestMapping("/userAccountCheck")
	public Msg userAccountCheck(@RequestParam("userAccount")String userAccount,HttpSession session) {
		if (userService.selectByUserAccount(userAccount)) {
			System.out.println(userService.selectByUserAccount(userAccount));
			return Msg.fail().add("va_msg", "该用户名已被注册过");
		}
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping("/userexchangePhone")
	public Msg userexchangePhone(@RequestParam("newPhone")String newPhone,HttpSession session) {
		if (""==newPhone.trim()) {
			return Msg.fail().add("va_msg", "电话号不可为空");
		}
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		user.setUserPhone(newPhone);
		userService.updateUser(user);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping("/userexchangeAccount")
	public Msg userexchangeAccount(@RequestParam("newName")String newName,HttpSession session) {
		if (""==newName.trim()) {
			return Msg.fail().add("va_msg", "新用户名不可为空");
		}
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null!=user) {
			user.setUserAccount(newName);
			userService.updateUser(user);
			return Msg.success();
		}
		return Msg.fail();
	}
	
	@ResponseBody
	@RequestMapping("/oldPasswordCheck")
	public Msg oldPasswordCheck(@RequestParam("oldPassword")String oldPassword,HttpSession session) {
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null!=user) {
			if (oldPassword.equals(user.getUserPassword())) {
				return Msg.success();
			}
		}
		return Msg.fail().add("va_msg", "密码不一致");
	}
	
	@ResponseBody
	@RequestMapping("/userexchangePassword")
	public Msg userexchangePssword(@RequestParam("password")String password,HttpSession session) {
		if (null==password) {
			return Msg.fail().add("va_msg", "密码不可为空");
		}
		User user = (User) session.getAttribute(Constants.USER_SESSION);
		if (null!=user) {
			user.setUserPassword(password);
			userService.updateUser(user);
			return Msg.success();
		}
		return Msg.fail().add("va_msg", "用户未登录");
	}
	
	@RequestMapping("/usershow")
	public String userShow(@RequestParam("userId")Integer userId,Model model) {
		User user = userService.selectByUserId(userId);
		model.addAttribute("user", user);
		return "user/usershow";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		return "user/contact";
	}
	
	@ResponseBody
	@RequestMapping("/smsService")
	public Msg smsService(@RequestParam("jbPhone")String jbPhone,HttpSession session) throws ClientException, InterruptedException {
		String code = getCode();
		session.setAttribute("smscode", code);
		
		//发短信
        SendSmsResponse response = SmsServe.sendSms(jbPhone, code);
        System.out.println("短信接口返回的数据----------------");
        System.out.println("Code=" + response.getCode());
        System.out.println("Message=" + response.getMessage());
        System.out.println("RequestId=" + response.getRequestId());
        System.out.println("BizId=" + response.getBizId());
        
        Thread.sleep(3000L);
        
      //查明细
        if(response.getCode() != null && response.getCode().equals("OK")) {
            QuerySendDetailsResponse querySendDetailsResponse = SmsServe.querySendDetails(response.getBizId());
            System.out.println("短信明细查询接口返回数据----------------");
            System.out.println("Code=" + querySendDetailsResponse.getCode());
            System.out.println("Message=" + querySendDetailsResponse.getMessage());
            int i = 0;
            for(QuerySendDetailsResponse.SmsSendDetailDTO smsSendDetailDTO : querySendDetailsResponse.getSmsSendDetailDTOs())
            {
                System.out.println("SmsSendDetailDTO["+i+"]:");
                System.out.println("Content=" + smsSendDetailDTO.getContent());
                System.out.println("ErrCode=" + smsSendDetailDTO.getErrCode());
                System.out.println("OutId=" + smsSendDetailDTO.getOutId());
                System.out.println("PhoneNum=" + smsSendDetailDTO.getPhoneNum());
                System.out.println("ReceiveDate=" + smsSendDetailDTO.getReceiveDate());
                System.out.println("SendDate=" + smsSendDetailDTO.getSendDate());
                System.out.println("SendStatus=" + smsSendDetailDTO.getSendStatus());
                System.out.println("Template=" + smsSendDetailDTO.getTemplateCode());
            }
            System.out.println("TotalCount=" + querySendDetailsResponse.getTotalCount());
            System.out.println("RequestId=" + querySendDetailsResponse.getRequestId());
        }

		return Msg.success();
	}
	
	    
	    public static String getCode(){    
	        int code=(int)(Math.random()*9000+100000);    
	        return code + "";    
	    } 
	    
	    @ResponseBody
	    @RequestMapping("/smsServeCheck")
	    public Msg smsServeCheck(@RequestParam("SmsCheckCodeVal")String SmsCheckCodeVal,HttpSession session) {
	    	String code = (String) session.getAttribute("smscode");
	    	System.out.println(code);
	    	if(SmsCheckCodeVal.equals(code)){
	    		System.out.println("相等");
				return Msg.success();
			}else{
				return Msg.fail();
			}
		}
	    
	    @ResponseBody
	    @RequestMapping("/removeSmsCode")
	    public Msg removeSmsCode(HttpSession session) {
			session.removeAttribute("smscode");
			return Msg.success();
		}
	    
	    
}
