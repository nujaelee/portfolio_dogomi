package com.bitstudy.app.domain;

import java.util.Date;

public class TcDto {
    private Integer tc_no;
    private String tc_id;
    private String tc_pw;
    private String tc_img;
    private String tc_name;
    private String tc_call;
    private String tc_email;
    private String tc_main_ad;
    private String tc_sub_ad;
    private String tc_joindate;
    private int tc_confirm;
    private String tc_leader;
    private String tc_businesse_no;

    public TcDto() { }

    public TcDto(Integer tc_no, String tc_id, String tc_pw, String tc_img, String tc_name, String tc_call, String tc_email, String tc_main_ad, String tc_sub_ad, String tc_joindate, int tc_confirm, String tc_leader, String tc_businesse_no) {
        this.tc_no = tc_no;
        this.tc_id = tc_id;
        this.tc_pw = tc_pw;
        this.tc_img = tc_img;
        this.tc_name = tc_name;
        this.tc_call = tc_call;
        this.tc_email = tc_email;
        this.tc_main_ad = tc_main_ad;
        this.tc_sub_ad = tc_sub_ad;
        this.tc_joindate = tc_joindate;
        this.tc_confirm = tc_confirm;
        this.tc_leader = tc_leader;
        this.tc_businesse_no = tc_businesse_no;
    }

    public String getTc_leader() {
        return tc_leader;
    }

    public void setTc_leader(String tc_leader) {
        this.tc_leader = tc_leader;
    }

    public String getTc_businesse_no() {
        return tc_businesse_no;
    }

    public void setTc_businesse_no(String tc_businesse_no) {
        this.tc_businesse_no = tc_businesse_no;
    }

    public Integer getTc_no() {
        return tc_no;
    }

    public void setTc_no(Integer tc_no) {
        this.tc_no = tc_no;
    }

    public String getTc_id() {
        return tc_id;
    }

    public void setTc_id(String tc_id) {
        this.tc_id = tc_id;
    }

    public String getTc_pw() {
        return tc_pw;
    }

    public void setTc_pw(String tc_pw) {
        this.tc_pw = tc_pw;
    }

    public String getTc_img() {
        return tc_img;
    }

    public void setTc_img(String tc_img) {
        this.tc_img = tc_img;
    }

    public String getTc_name() {
        return tc_name;
    }

    public void setTc_name(String tc_name) {
        this.tc_name = tc_name;
    }

    public String getTc_call() {
        return tc_call;
    }

    public void setTc_call(String tc_call) {
        this.tc_call = tc_call;
    }

    public String getTc_email() {
        return tc_email;
    }

    public void setTc_email(String tc_email) {
        this.tc_email = tc_email;
    }

    public String getTc_main_ad() {
        return tc_main_ad;
    }

    public void setTc_main_ad(String tc_main_ad) {
        this.tc_main_ad = tc_main_ad;
    }

    public String getTc_sub_ad() {
        return tc_sub_ad;
    }

    public void setTc_sub_ad(String tc_sub_ad) {
        this.tc_sub_ad = tc_sub_ad;
    }

    public String getTc_joindate() {
        return tc_joindate;
    }

    public void setTc_joindate(String tc_joindate) {
        this.tc_joindate = tc_joindate;
    }

    public int getTc_confirm() {
        return tc_confirm;
    }

    public void setTc_confirm(int tc_confirm) {
        this.tc_confirm = tc_confirm;
    }

    @Override
    public String toString() {
        return "TcDto{" +
                "tc_no=" + tc_no +
                ", tc_id='" + tc_id + '\'' +
                ", tc_pw='" + tc_pw + '\'' +
                ", tc_img='" + tc_img + '\'' +
                ", tc_name='" + tc_name + '\'' +
                ", tc_call='" + tc_call + '\'' +
                ", tc_email='" + tc_email + '\'' +
                ", tc_main_ad='" + tc_main_ad + '\'' +
                ", tc_sub_ad='" + tc_sub_ad + '\'' +
                ", tc_joindate='" + tc_joindate + '\'' +
                ", tc_confirm=" + tc_confirm +
                ", tc_leader='" + tc_leader + '\'' +
                ", tc_businesse_no='" + tc_businesse_no + '\'' +
                '}';
    }
}
