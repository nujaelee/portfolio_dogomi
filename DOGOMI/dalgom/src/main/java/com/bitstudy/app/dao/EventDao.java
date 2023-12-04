package com.bitstudy.app.dao;

import com.bitstudy.app.domain.EventDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class EventDao {

    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.eventMapper.";

    public List<EventDto> getEventList() {

        List<EventDto> list = session.selectList(namespace+"getEventList");

        return list;
    }

    public EventDto getEventInfo(int ev_no) {

        EventDto eventDto = session.selectOne(namespace+"getEventInfo", ev_no);

        return eventDto;
    }

    public List<EventDto> getEventListPage(Map map) {

        List<EventDto> eventDto = session.selectList(namespace+"getEventListPage", map);

        return eventDto;
    }

    public int getEventListPageCount() {
        int count = session.selectOne(namespace+"getEventListPageCount");

        return count;
    }


}
