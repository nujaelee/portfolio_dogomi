package com.bitstudy.app.domain;

import java.util.Date;

public class NoticeDto {
    private Integer nt_no;
    private String nt_title;
    private String nt_content;
    private Date nt_date;
    private int nt_state;

    public NoticeDto() {
    }

    public Integer getNt_no() {
        return nt_no;
    }

    public void setNt_no(Integer nt_no) {
        this.nt_no = nt_no;
    }

    public String getNt_title() {
        return nt_title;
    }

    public void setNt_title(String nt_title) {
        this.nt_title = nt_title;
    }

    public String getNt_content() {
        return nt_content;
    }

    public void setNt_content(String nt_content) {
        this.nt_content = nt_content;
    }

    public Date getNt_date() {
        return nt_date;
    }

    public void setNt_date(Date nt_date) {
        this.nt_date = nt_date;
    }

    public int getNt_state() {
        return nt_state;
    }

    public void setNt_state(int nt_state) {
        this.nt_state = nt_state;
    }
}
