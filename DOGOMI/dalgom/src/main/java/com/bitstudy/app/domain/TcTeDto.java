package com.bitstudy.app.domain;

import java.util.Date;

public class TcTeDto {
    private Integer tc_no;
    private String tc_id;
    private String tc_pw;
    private String tc_name;
    private String tc_call;
    private String tc_email;
    private String tc_main_ad;
    private String tc_sub_ad;
    private Date tc_joindate;
    private int confirm;

    private String tc_img;

    private Integer te_no;
    private String te_img;
    private String te_name;
    private Date te_in;
    private Date te_out;
    private String te_petsize;
    private int te_cost;

    public TcTeDto() {
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

    public Date getTc_joindate() {
        return tc_joindate;
    }

    public void setTc_joindate(Date tc_joindate) {
        this.tc_joindate = tc_joindate;
    }

    public int getConfirm() {
        return confirm;
    }

    public void setConfirm(int confirm) {
        this.confirm = confirm;
    }

    public String getTc_img() {
        return tc_img;
    }

    public void setTc_img(String tc_img) {
        this.tc_img = tc_img;
    }

    public Integer getTe_no() {
        return te_no;
    }

    public void setTe_no(Integer te_no) {
        this.te_no = te_no;
    }

    public String getTe_img() {
        return te_img;
    }

    public void setTe_img(String te_img) {
        this.te_img = te_img;
    }

    public String getTe_name() {
        return te_name;
    }

    public void setTe_name(String te_name) {
        this.te_name = te_name;
    }

    public Date getTe_in() {
        return te_in;
    }

    public void setTe_in(Date te_in) {
        this.te_in = te_in;
    }

    public Date getTe_out() {
        return te_out;
    }

    public void setTe_out(Date te_out) {
        this.te_out = te_out;
    }

    public String getTe_petsize() {
        return te_petsize;
    }

    public void setTe_petsize(String te_petsize) {
        this.te_petsize = te_petsize;
    }

    public int getTe_cost() {
        return te_cost;
    }

    public void setTe_cost(int te_cost) {
        this.te_cost = te_cost;
    }

    @Override
    public String toString() {
        return "TcTeDto{" +
                "tc_no=" + tc_no +
                ", tc_id='" + tc_id + '\'' +
                ", tc_pw='" + tc_pw + '\'' +
                ", tc_name='" + tc_name + '\'' +
                ", tc_call='" + tc_call + '\'' +
                ", tc_email='" + tc_email + '\'' +
                ", tc_main_ad='" + tc_main_ad + '\'' +
                ", tc_sub_ad='" + tc_sub_ad + '\'' +
                ", tc_joindate=" + tc_joindate +
                ", confirm=" + confirm +
                ", tc_img='" + tc_img + '\'' +
                ", te_no=" + te_no +
                ", te_img='" + te_img + '\'' +
                ", te_name='" + te_name + '\'' +
                ", te_in=" + te_in +
                ", te_out=" + te_out +
                ", te_petsize='" + te_petsize + '\'' +
                ", te_cost=" + te_cost +
                '}';
    }
}
