package com.bitstudy.app.domain;

import java.util.Date;

public class CsDto {
    private Integer cs_no;
    private String cs_title;
    private String cs_content;
    private Date cs_date;

    public CsDto() {
    }

    public Integer getCs_no() {
        return cs_no;
    }

    public void setCs_no(Integer cs_no) {
        this.cs_no = cs_no;
    }

    public String getCs_title() {
        return cs_title;
    }

    public void setCs_title(String cs_title) {
        this.cs_title = cs_title;
    }

    public String getCs_content() {
        return cs_content;
    }

    public void setCs_content(String cs_content) {
        this.cs_content = cs_content;
    }

    public Date getCs_date() {
        return cs_date;
    }

    public void setCs_date(Date cs_date) {
        this.cs_date = cs_date;
    }
}
