package com.guide.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.guide.pojo.NianHui;
import com.guide.pojo.NianHuiData;

public interface NianHuiMapper {

	List<NianHui> query();

	void insert_nianhui(NianHui nian);

	List<NianHui> cloud();

	List<NianHui> line(@Param("start_time") String start_time, @Param("end") String end);

	Date first_time();
	
	List<NianHui> graph_w();
	
	List<NianHui> graph_m();
	

}
