package com.bitstudy.app.domain;

import java.util.Date;

public class TeDto {
    private Integer te_no;
    private Integer tc_no;
    private String te_img;
    private String te_name;
    private String te_in;
    private String te_out;
    private String te_petsize;
    private int te_cost;

    public TeDto() { }

    public Integer getTe_no() {
        return te_no;
    }

    public void setTe_no(Integer te_no) {
        this.te_no = te_no;
    }

    public Integer getTc_no() {
        return tc_no;
    }

    public void setTc_no(Integer tc_no) {
        this.tc_no = tc_no;
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

    public String getTe_in() {
        return te_in;
    }

    public void setTe_in(String te_in) {
        this.te_in = te_in;
    }

    public String getTe_out() {
        return te_out;
    }

    public void setTe_out(String te_out) {
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
}
