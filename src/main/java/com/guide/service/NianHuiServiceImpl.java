package com.guide.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.guide.mapper.NianHuiMapper;
import com.guide.pojo.NianHui;
import com.guide.pojo.NianHuiData;

@Service("nianHuiService")
public class NianHuiServiceImpl implements NianHuiService {
	@Autowired
	private NianHuiMapper nianHuiMapper;

	public List<NianHui> query() {
		return nianHuiMapper.query();
	}


	public List<NianHui> cloud() {
		// TODO Auto-generated method stub
		return nianHuiMapper.cloud();
	}

	public List<NianHui> line(String start_time, String end) {
		// TODO Auto-generated method stub
		return nianHuiMapper.line(start_time,end);
	}

	public Date first_time() {
		// TODO Auto-generated method stub
		return nianHuiMapper.first_time();
	}

	public void insert_nianhui(NianHui nian) {
		nianHuiMapper.insert_nianhui(nian);
		
	}

	public List<NianHui> graph_w() {
		return nianHuiMapper.graph_w();
		
	}
	
	public List<NianHui> graph_m() {
		return nianHuiMapper.graph_m();
		
	}
}
