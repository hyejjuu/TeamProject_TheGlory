package com.teamproject.theglory.kgh.dao;

import java.util.List;

import com.teamproject.theglory.kgh.domain.LocationMap;


public interface LocationDao {
   
	public abstract List<LocationMap> Map();
	
    public abstract List<LocationMap> addressSearch(String locationAddress);
	
	public abstract List<LocationMap> areaSearch(int areaNo);
	
}