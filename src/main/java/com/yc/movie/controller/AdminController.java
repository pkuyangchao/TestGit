package com.yc.movie.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
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
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.icexls.IceExcel;
import com.yc.movie.bean.Admin;
import com.yc.movie.bean.Movie;
import com.yc.movie.bean.MovieType;
import com.yc.movie.service.AdminService;
import com.yc.movie.service.MovieService;
import com.yc.movie.service.MovieTypeService;
import com.yc.movie.service.RoleService;
import com.yc.movie.utils.Constants;
import com.yc.movie.utils.HostProperties;
import com.yc.movie.utils.Msg;
import com.yc.movie.utils.validatecode.Captcha;
import com.yc.movie.utils.validatecode.GifCaptcha;

import Decoder.BASE64Decoder;

@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
	@Autowired 
	MovieService movieService;
	
	@Autowired
	MovieTypeService movieTypeService;
	
	@Autowired
	RoleService roleService;
	
	@RequestMapping("adminLoginPage")
	public String adminLoginPage(HttpServletRequest request,HttpSession session) {
		return "admin/login";
	}
	
	@ResponseBody
	@RequestMapping("/adminAccountCheck")
	public Msg adminNameCheck(@RequestParam("adminAccount")String adminAccount) {
		//先判断用户名是否是合法的表达式;
		String regx = "(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})";
		if(!adminAccount.matches(regx)){
			return Msg.fail().add("va_msg", "用户名应是6-16位数字和字母的组合或2-5位中文");
		}
		if (adminService.selectByAdminAccount(adminAccount)==null) {
			return Msg.fail().add("va_msg", "该用户名不存在");
		}
		return Msg.success();
	}
	

	@RequestMapping("/adminLogin")
	public String adminLogin(@RequestParam("adminAccount")String adminAccount,			
			@RequestParam("adminPassword")String adminPassword,
			@RequestParam(value="vcode",defaultValue="no")String vcode,@RequestParam(value="rememberMe",required=false)String rememberMe,
			HttpSession session,HttpServletRequest request) throws IOException {
	
		vcode = vcode.toLowerCase(); 
		String v = (String) session.getAttribute("_code"); 
		session.removeAttribute("_come"); 
		if(!vcode.equals(v)){ 
			session.setAttribute("va_msg", "验证码错误");
			return "redirect:adminLoginPage";
		} 
		Admin arg1 = (Admin) session.getAttribute(Constants.ADMIN_SESSION);
		if (null!=arg1) {
			session.setAttribute(Constants.ADMIN_SESSION, arg1);
		}
		
		Subject currentUser = SecurityUtils.getSubject();
		System.out.println("currentUser"+currentUser);
		if (!currentUser.isAuthenticated()) {
            UsernamePasswordToken token = new UsernamePasswordToken(adminAccount, adminPassword);
           
            if (null!=rememberMe) {
            	   token.setRememberMe(true);
			}
            System.out.println(rememberMe);
            try {
            	System.out.println("1. " + token.hashCode());
                currentUser.login(token);
              
                Admin admin = adminService.adminLogin(adminAccount, adminPassword);
                session.setAttribute(Constants.ADMIN_SESSION, admin);
       		
                System.out.println("登录成功");
            } catch (UnknownAccountException e) {
            	session.setAttribute("va_msg", "账号不存在");
                return  "redirect:adminLoginPage";
            } catch (IncorrectCredentialsException e) {
            	session.setAttribute("va_msg", "账号或密码不正确");
                return  "redirect:adminLoginPage";
            } catch (LockedAccountException e) {
            	session.setAttribute("va_msg", "账户被锁定");
                return  "redirect:adminLoginPage";
            } catch (AuthenticationException e) {
            	session.setAttribute("va_msg", "登录失败");
                return  "redirect:adminLoginPage";
            }
            
        }		
		return "redirect:adminIndex";
	}
	
	
	@RequestMapping("/adminIndex")
	public String adminIndex(Model model,HttpSession session) {
		return "admin/index";
	}
	
	@RequestMapping("/welcome")
	public String welcome(HttpServletRequest request,Model model){
		HostProperties hostProperties = new HostProperties();
		hostProperties.setComputerDomain(System.getenv("USERDOMAIN"));
		hostProperties.setComputerName(System.getenv("COMPUTERNAME"));
		hostProperties.setHostName(System.getenv("USERNAME"));
		hostProperties.setOsName(System.getProperty("os.name"));
			
		hostProperties.setCpuCount(8);
		Date date = new Date();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		hostProperties.setOsDate(df.format(date));
		hostProperties.setHostLanguage("Chinese (People's Republic of China)");
		hostProperties.setSessionId(request.getSession().getId());
		hostProperties.setUserdir(System.clearProperty("user.dir"));
		model.addAttribute("hostProperties",hostProperties);
		return "admin/welcome";
	}
	
	@RequestMapping("/adminselfinfo")
	public String adminShow(Model model,HttpSession session) {
		model.addAttribute("admin", session.getAttribute(Constants.ADMIN_SESSION));
		return "admin/adminselfinfo";
	}
	
	@RequestMapping("/adminlist")
	public String adminlist(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
			Model model,@RequestParam(value="adminSearch",required=false)String adminSearch) {
		// 这不是一个分页查询；
		// 引入PageHelper分页插件
		// 在查询之前只需要调用，传入页码，以及每页的大小
		PageHelper.startPage(pn, 5);
		// startPage后面紧跟的这个查询就是一个分页查询
		List<Admin> admins = adminService.getAll(adminSearch);
		// 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
		// 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
		PageInfo<Admin> page = new PageInfo<Admin>(admins, 5);
		model.addAttribute("pageInfo", page);
		return "admin/adminlist";
	}
	
	@RequestMapping("/adminadd")
	public String adminadd() {
		return "admin/adminadd";
	}
	
	@ResponseBody
	@RequestMapping("/adminsave")
	public Msg adminsave(Admin admin) {
		adminService.adminSave(admin);
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/admin/{ids}",method=RequestMethod.DELETE)
	public Msg deleteAdmin(@PathVariable("ids")String ids){
		//批量删除
		if(ids.contains("-")){
			List<Integer> del_ids = new ArrayList<>();
			String[] str_ids = ids.split("-");
			//组装id的集合
			for (String string : str_ids) {
				del_ids.add(Integer.parseInt(string));
			}
			adminService.deleteBatchAdmins(del_ids);
		}else{
			Integer id = Integer.parseInt(ids);
			adminService.deleteAdmin(id);
		}
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value="/admin",method=RequestMethod.PUT)
	public Msg saveAdmin(Admin admin,HttpServletRequest request){
		adminService.updateAdmin(admin);
		return Msg.success();
	}
	
	@RequestMapping("/adminupdate")
	public String adminupdate(@RequestParam("adminId")Integer adminId,Model model) {
		Admin admin = adminService.selectByAdminId(adminId);
		model.addAttribute("admin",admin);
		return "admin/adminupdate";
	}
	
	@RequestMapping("/adminlogout")
	public String adminlogout(HttpSession session) {
		session.removeAttribute(Constants.ADMIN_SESSION);
		return "admin/login";
	}
	
	@RequestMapping("/adminchange")
	public String adminchange() {
		return "admin/login";
	}
	
	@ResponseBody
	@RequestMapping("/adminexchangeTitle")
	public Msg adminexchangeTitle(HttpServletRequest request,HttpSession session,@RequestParam("img")String img){
		//String path = request.getSession().getServletContext().getRealPath("/mymovie/adminTitles/");
		String path = "G:\\eclipse\\workspace\\mymovie\\src\\main\\webapp\\static\\mymovie\\adminTitle";
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        String blogPicture =  "\\mymovie\\adminTitle\\" + newFileName;
		Admin admin= (Admin) session.getAttribute(Constants.ADMIN_SESSION);
		admin.setAdminTitle(blogPicture);
		adminService.updateAdmin(admin);
		return Msg.success();
	}

	@RequestMapping("/chart3Dzhu")
	public String charts3Dzhu(Model model) {
		List<MovieType> movieTypes = movieTypeService.getAll();
		List<Movie> movies = new ArrayList<Movie>();
		int i = 1;
		for (MovieType movieType : movieTypes) {
			movies = movieService.getTypeSearch(movieType.getMovieTypeName());
			System.out.println(movies.toString());
			model.addAttribute("movieType"+i, movies.size());
			model.addAttribute("movieTypeName"+i, movieType.getMovieTypeName());
			i++;
		}
		return "admin/chart3Dzhu";
	}
	
	@RequestMapping("/chart3Dbing")
	public String charts3Dbing(Model model) {
		List<MovieType> movieTypes = movieTypeService.getAll();
		List<Movie> movies1 = movieService.getAll();
		List<Movie> movies =  new ArrayList<Movie>();
		int i = 1;
		for (MovieType movieType : movieTypes) {
			movies = movieService.getTypeSearch(movieType.getMovieTypeName());
			float rate = (float)(movies.size())/(movies1.size())*100;
			model.addAttribute("movieType"+i, rate);
			model.addAttribute("movieTypeName"+i, movieType.getMovieTypeName());
			i++;
		}
		return "admin/chart3Dbing";
	}
	
	@RequestMapping("/chartzhe")
	public String chartszhe(Model model) {
		List<MovieType> movieTypes = movieTypeService.getAll();
		int i = 1;
		for (MovieType movieType : movieTypes) {
			model.addAttribute("movieTypeName"+i, movieType.getMovieTypeName());
			int rate1 = movieService.selectByMovieTime("1900-00-00","1975-12-30",movieType.getMovieTypeName());
			int rate2 = movieService.selectByMovieTime("1976-00-00","1980-12-30",movieType.getMovieTypeName());
			int rate3 = movieService.selectByMovieTime("1981-00-00","1985-12-30",movieType.getMovieTypeName());
			int rate4 = movieService.selectByMovieTime("1986-00-00","1990-12-30",movieType.getMovieTypeName());
			int rate5 = movieService.selectByMovieTime("1991-00-00","1995-12-30",movieType.getMovieTypeName());
			int rate6 = movieService.selectByMovieTime("1996-00-00","2000-12-30",movieType.getMovieTypeName());
			int rate7 = movieService.selectByMovieTime("2001-00-00","2005-12-30",movieType.getMovieTypeName());
			int rate8 = movieService.selectByMovieTime("2006-00-00","2010-12-30",movieType.getMovieTypeName());
			int rate9 = movieService.selectByMovieTime("2011-00-00","2015-12-30",movieType.getMovieTypeName());
			int rate10 = movieService.selectByMovieTime("2016-00-00","2020-12-30",movieType.getMovieTypeName());
			
			model.addAttribute("rate"+i+"1", rate1);
			model.addAttribute("rate"+i+"2", rate2);
			model.addAttribute("rate"+i+"3", rate3);
			model.addAttribute("rate"+i+"4", rate4);
			model.addAttribute("rate"+i+"5", rate5);
			model.addAttribute("rate"+i+"6", rate6);
			model.addAttribute("rate"+i+"7", rate7);
			model.addAttribute("rate"+i+"8", rate8);
			model.addAttribute("rate"+i+"9", rate9);
			model.addAttribute("rate"+i+"10", rate10);
			i++;
		}
		return "admin/chartzhe";
	}
	
	@RequestMapping(value="getGifCode",method=RequestMethod.GET)
	public void getGifCode(HttpServletResponse response,HttpServletRequest request){
		try {
			response.setHeader("Pragma", "No-cache");  
	        response.setHeader("Cache-Control", "no-cache");  
	        response.setDateHeader("Expires", 0);  
	        response.setContentType("image/gif");  
	        /**
	         * gif格式动画验证码
	         * 宽，高，位数。
	         */
	        Captcha captcha = new GifCaptcha(146,33,4);
	        //输出
	        captcha.out(response.getOutputStream());
	        HttpSession session = request.getSession(true);  
	        //存入Session
	        session.setAttribute("_code",captcha.text().toLowerCase()); 
		} catch (Exception e) {
			System.out.println( "获取验证码异常："+e.getMessage());
		}
	}
	
	@RequestMapping("/showroles")
	@ResponseBody
	public List showRoles(@RequestParam("userName")String userName){
		return roleService.getRolesByAdminAccount(userName);
	}
	
	@RequestMapping("/listRoles")
	@ResponseBody
	public List getRoles(){
		return roleService.getAll();
	}
	
	@RequestMapping("/corelationRole")
	@ResponseBody
	public void corelationRole(Integer userId,String roleId){
		Admin admin = adminService.selectByAdminId(userId);
		admin.setAdminType(roleId);
		adminService.updateAdmin(admin);
	}
	
	@RequestMapping("/adminUnauthorized")
	public ModelAndView adminUnauthorized() {
		 ModelAndView mav=new ModelAndView("admin/adminUnauthorized");
		 return mav;
	}
	
	@RequestMapping("/systembase")
	public String systembase() {
		return "admin/systembase";
	}
	
	@RequestMapping("/systemshielding")
	public String systemshielding() {
		return "admin/systemshielding";
	}
	
	@RequestMapping("/outadminlist")
	public String outadminlist() {
		 String xlsFile = "G:/adminlist.xls";  
		 List<Admin> admins = adminService.getAll(null);
		 String[][] data = { { "zs", "张三" }, { "ls", "李四" }, { "ww", "王五" } };
		 int i = 0;
         for(Admin a : admins){
        	 String[] toBeStored = new String[admins.size()];   
        	 admins.toArray(toBeStored);   
        	 for (String s : toBeStored) {   
        	   System.out.println(s);   
        	 }   
             JSONObject jo = new JSONObject();
             jo.put("id", a.getAdminId());
             jo.put("账号", a.getAdminAccount());
             jo.put("姓名", a.getAdminName());
             jo.put("电话", a.getAdminPhone());
             jo.put("性别", a.getAdminSex());
             jo.put("类型", a.getAdminType());
     
         }
        
		 IceExcel iceXls = new IceExcel(xlsFile);  
		 iceXls.setData(data);  
		return "";
	}
	
	public static void main(String[] args) {
		AdminController adminController = new AdminController();
		adminController.outadminlist();
	}
}
