package com.yc.movie.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yc.movie.bean.Admin;
import com.yc.movie.bean.BrowsingHistory;
import com.yc.movie.service.BrowsingHistoryService;
import com.yc.movie.utils.Msg;

@Controller
public class BrowsingHistoryController {

	@Autowired
	BrowsingHistoryService browsingHistoryService;
	
	@RequestMapping("/browsehistorylist")
	public String browsehistorylist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model) {
		PageHelper.startPage(pn, 100);
		List<BrowsingHistory> browsingHistories = browsingHistoryService.getAll();
		PageInfo<BrowsingHistory> page = new PageInfo<BrowsingHistory>(browsingHistories, 100);
		model.addAttribute("pageInfo", page);
		return "browsing/browsehistorylist";
	}
	
	@ResponseBody
	@RequestMapping(value="/browsing/{ids}",method=RequestMethod.DELETE)
	public Msg deleteBrowsingHistory(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			browsingHistoryService.deleteBatchBrowsingHistorys(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			browsingHistoryService.deleteBrowsingHistory(id);
		}
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping("/browsingsave")
	public Msg browsingsave(@RequestParam("userId")Integer userId,@RequestParam("movieId")Integer movieId) {
		if (userId!=null) {
			BrowsingHistory browsingHistory = new BrowsingHistory();
			browsingHistory.setMovieId(movieId);
			browsingHistory.setUserId(userId);
			Date date = new Date();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			browsingHistory.setBrowsingTime(simpleDateFormat.format(date));
			browsingHistoryService.insertBrowsingHistory(browsingHistory);
			System.out.println(".................");
			return Msg.success();
		}
		return Msg.success();
	}
}
