package com.bitstudy.app.service;

import com.bitstudy.app.dao.EventDao;
import com.bitstudy.app.domain.EventDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class EventService {

    @Autowired
    EventDao eventDao;

    public List<EventDto> getEventList(){

        List<EventDto> list = eventDao.getEventList();

        return list;
    }

    public EventDto getEventInfo(int ev_no) {

        EventDto eventDto = eventDao.getEventInfo(ev_no);

        return eventDto;
    }

    public List<EventDto> getEventListPage(Map map) {

        List<EventDto> eventDto = eventDao.getEventListPage(map);

        return eventDto;
    }

    public int getEventListPageCount() {

        int count = eventDao.getEventListPageCount();

        return count;
    }




}
