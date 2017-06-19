package com.guide.service;

import java.util.Date;
import java.util.List;

import com.guide.pojo.NianHui;

public interface NianHuiService {

	List<NianHui> query();

	List<NianHui> cloud();

	List<NianHui> line(String start_time, String end);

	Date first_time();
	
	void insert_nianhui(NianHui nian);
	
	List<NianHui> graph_w();
	
	List<NianHui> graph_m();
}
