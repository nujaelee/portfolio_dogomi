package com.bitstudy.app.domain;

import java.util.Date;

public class CommunityDto {
    private Integer cu_no;
    private Integer user_no;
    private String user_id;
    private String cu_title;
    private String cu_img;
    private String cu_content;
    private Date cu_update;
    private int cu_viewcnt;
    private int co_cnt;

    public CommunityDto() {
    }
    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    public String getCu_title() {
        return cu_title;
    }

    public void setCu_title(String cu_title) {
        this.cu_title = cu_title;
    }

    public Integer getCu_no() {
        return cu_no;
    }

    public void setCu_no(Integer cu_no) {
        this.cu_no = cu_no;
    }

    public Integer getUser_no() {
        return user_no;
    }

    public void setUser_no(Integer user_no) {
        this.user_no = user_no;
    }

    public String getCu_img() {
        return cu_img;
    }

    public void setCu_img(String cu_img) {
        this.cu_img = cu_img;
    }

    public String getCu_content() {
        return cu_content;
    }

    public void setCu_content(String cu_content) {
        this.cu_content = cu_content;
    }

    public Date getCu_update() {
        return cu_update;
    }

    public void setCu_update(Date cu_update) {
        this.cu_update = cu_update;
    }

    public int getCu_viewcnt() {
        return cu_viewcnt;
    }

    public void setCu_viewcnt(int cu_viewcnt) {
        this.cu_viewcnt = cu_viewcnt;
    }

    public int getCo_cnt() {
        return co_cnt;
    }

    @Override
    public String toString() {
        return "CommunityDto{" +
                "cu_no=" + cu_no +
                ", user_no=" + user_no +
                ", user_id='" + user_id + '\'' +
                ", cu_title='" + cu_title + '\'' +
                ", cu_img='" + cu_img + '\'' +
                ", cu_content='" + cu_content + '\'' +
                ", cu_update=" + cu_update +
                ", cu_viewcnt=" + cu_viewcnt +
                ", co_cnt=" + co_cnt +
                '}';
    }

    public void setCo_cnt(int co_cnt) {
        this.co_cnt = co_cnt;
    }

    public CommunityDto(Integer cu_no, Integer user_no, String cu_title, String cu_img, String cu_content) {
        this.cu_no = cu_no;
        this.user_no = user_no;
        this.cu_title = cu_title;
        this.cu_img = cu_img;
        this.cu_content = cu_content;
    }
}
