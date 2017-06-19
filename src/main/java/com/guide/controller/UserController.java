package com.guide.controller;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.guide.pojo.NianHui;
import com.guide.pojo.NianHuiData;
import com.guide.service.NianHuiService;
import com.guide.utils.GlobalConstants;

@Controller
@RequestMapping("/")
public class UserController {
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	SimpleDateFormat fmr = new SimpleDateFormat("MM-dd");
	DecimalFormat df = new DecimalFormat();
	// 处理业务逻辑的userService
	@Resource(name = "nianHuiService")
	private NianHuiService nianHuiService;
	@SuppressWarnings("unused")
	private Logger logger;

	public UserController() {
		this.logger = Logger.getLogger(UserController.class);
	}

	@RequestMapping(value = "validate", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String change_pass(HttpServletRequest request, @RequestParam("val") String val) {
		System.err.println(val);
		List<NianHui> list = nianHuiService.query();
		System.err.println(list.toString());
		return list.toString();
	}

	@RequestMapping(value = "main", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String main(HttpServletRequest request) {
		return "main1";
	}
	
	@RequestMapping(value = "other", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String other(HttpServletRequest request) {
		return "other";
	}

	@RequestMapping(value = "submit", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String submit(HttpServletRequest request) {
		NianHui nian = new NianHui();
		nian.setDriver(request.getParameter("laosiji"));
		nian.setMale(Integer.parseInt(request.getParameter("gender")));
		nian.setZhao(request.getParameter("activity"));
		nian.setGoddess(request.getParameter("goddess"));
		nianHuiService.insert_nianhui(nian);
		HashMap<String, Integer> wish = new HashMap<String, Integer>();
		String wish_v = request.getParameter("wish");
		for (int i = 0; i < wish_v.split(",").length; i++) {
			wish.put(wish_v.split(",")[i], 0);
		}
		if("0".equals(request.getParameter("gender"))){
			String wn_v = request.getParameter("expect");
			
			HashMap<String, Integer> wn = new HashMap<String, Integer>();
			for (int i = 0; i < wn_v.split(",").length; i++) {
				wn.put(wn_v.split(",")[i], 0);
			}
			String wl_v = request.getParameter("like");
			HashMap<String, Integer> wl = new HashMap<String, Integer>();
			for (int i = 0; i < wl_v.split(",").length; i++) {
				wl.put(wl_v.split(",")[i], 0);
			}
			GlobalConstants.setWN(wn);
			GlobalConstants.setWL(wl);
		}else{
			String mn_v = request.getParameter("expect");
			HashMap<String, Integer> mn = new HashMap<String, Integer>();
			for (int i = 0; i < mn_v.split(",").length; i++) {
				mn.put(mn_v.split(",")[i], 0);
			}
			String ml_v = request.getParameter("like");
			HashMap<String, Integer> ml = new HashMap<String, Integer>();
			for (int i = 0; i < ml_v.split(",").length; i++) {
				ml.put(ml_v.split(",")[i], 0);
			}
			GlobalConstants.setML(ml);
			GlobalConstants.setMN(mn);
		}
		GlobalConstants.setWish(wish);
		return GlobalConstants.getML().toString();
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "show", method = RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String show(HttpServletRequest request) {
		HashMap<String, Integer> map = new HashMap<String, Integer>();
		Date start_time = GlobalConstants.getFirst();
		System.err.println(start_time);
		System.err.println(nianHuiService.first_time());
		List<NianHui> list_cloud = nianHuiService.cloud();
		List<NianHui> list_line = null;
		String end = "";
		String start = "";
		Calendar cal = Calendar.getInstance();
		cal.setTime(start_time);
		cal.add(Calendar.SECOND, 20);
		String line = "0,";
		Calendar cal2 = Calendar.getInstance();
		cal2.setTime(start_time);
		cal2.add(Calendar.SECOND, -20);
		start = dateToString(start_time);
		String line_lenged = new SimpleDateFormat("HH:mm:ss").format(cal2.getTime()) + ",";
		// String line_lenged ="";
		for (int i = 0; i < 24; i++) {
			cal.add(Calendar.SECOND, 20);
			end = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(cal.getTime());
			list_line = nianHuiService.line(start, end);
			line_lenged += start.split(" ")[1] + ",";
			line += list_line.get(0).getSub_count() + ",";
			start = end;
		}

		List<String> lenged = new ArrayList<String>();
		String mn = "";
		String ml = "";
		String wn = "";
		String wl = "";
		String wish_leng = "";
		String ml_l = "";
		String mn_l = "";
		String wl_l = "";
		String wn_l = "";
		for (String i : GlobalConstants.getML().keySet()) {
			 ml_l = i+",";
			ml += GlobalConstants.getML().get(i) + ",";
		}
		for (String i : GlobalConstants.getMN().keySet()) {
			mn_l +=i+",";
			mn += GlobalConstants.getMN().get(i) + ",";
		}
		for (String i : GlobalConstants.getWN().keySet()) {
			wn_l += i+",";
			wn += GlobalConstants.getWN().get(i) + ",";
		}
		for (String i : GlobalConstants.getWL().keySet()) {
			wl_l += i+",";
			wl += GlobalConstants.getWL().get(i) + ",";
		}
		
		// wish
		JSONArray wish = new JSONArray();
		for (String i : GlobalConstants.getWish().keySet()) {
			JSONObject ww = new JSONObject();
			wish_leng += i + ",";
			ww.put("name", i);
			ww.put("value", GlobalConstants.getWish().get(i));
			wish.add(ww);
		}
		// cloud
		JSONArray cloud = new JSONArray();
		for (NianHui i : list_cloud) {
			JSONObject cc = new JSONObject();
			cc.put("name", i.getZhao());
			cc.put("value", i.getCloud_count());
			cloud.add(cc);
		}
		List<NianHui> graph_w = nianHuiService.graph_w();
		List<NianHui> graph_m = nianHuiService.graph_m();
		request.setAttribute("mn", mn.substring(0, mn.length() - 1));
		request.setAttribute("ml", ml.substring(0, ml.length() - 1));
		request.setAttribute("wn", wn.substring(0, wn.length() - 1));
		request.setAttribute("wl", wl.substring(0, wl.length() - 1));
		request.setAttribute("wish_lenged", wish_leng.substring(0, wish_leng.length() - 1));
		request.setAttribute("wish", wish.toJSONString());
		request.setAttribute("cloud", cloud.toJSONString());
		request.setAttribute("line_lenged", line_lenged.substring(0, line_lenged.length() - 1));
		request.setAttribute("line", line.substring(0, line.length() - 1));
		request.setAttribute("graph_w", graph_w);
		request.setAttribute("graph_m", graph_m);
		return "main";
	}

	public static Date StringToDate(String dateStr) {
		DateFormat sdf = new SimpleDateFormat("HH:mm:ss");
		Date date = null;
		try {
			date = sdf.parse(dateStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return date;
	}

	private String dateToString(Date date) {
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String str = format.format(date);
		return str;
	}
}
