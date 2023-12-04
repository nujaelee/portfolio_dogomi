package com.bitstudy.app.domain;


public class SearchDto {
    private String addressKeyword1; // 위치정보 검색 키워드
    private String addressKeyword2;
    private String addressKeyword3;
    private String addressKeyword4;
    private String addressKeyword5;
    private String addressKeyword6;
    private String addressKeyword7;
    private String addressKeyword8;
    private String addressKeyword9;
    private String addressKeyword10;
    private String addressKeyword11;
    private String addressKeyword12;
    private String addressKeyword13;
    private String addressKeyword14;
    private String addressKeyword15;
    private String addressKeyword16;
    private String addressKeyword17; // 위치정보 검색 키워드

    private String addressKeyword21; // 훈련정보 검색 키워드
    private String addressKeyword22;
    private String addressKeyword23;
    private String addressKeyword24;
    private String addressKeyword25;
    private String addressKeyword26; // 훈련정보 검색 키워드

    private String addressKeyword31; // 훈련정보 펫사이즈 검색 키워드
    private String addressKeyword32;
    private String addressKeyword33; // 훈련정보 펫사이즈 검색 키워드

    // 검색 페이지 관련 옵션
    private Integer offset=0; // 0개부터 pageSize 만큼의 게시글 가져오게 만드는 첫숫자
    private Integer page=1;
    private Integer pageSize=10; // 한 페이지당 보여줄 게시글 개수 (한페이지당 게시글 10개)

    private Integer tc_confirm=1; // tc_confirm 조건 설정


    public SearchDto() { }

    public String getAddressKeyword1() {
        return addressKeyword1;
    }

    public void setAddressKeyword1(String addressKeyword1) {
        this.addressKeyword1 = addressKeyword1;
    }

    public String getAddressKeyword2() {
        return addressKeyword2;
    }

    public void setAddressKeyword2(String addressKeyword2) {
        this.addressKeyword2 = addressKeyword2;
    }

    public String getAddressKeyword3() {
        return addressKeyword3;
    }

    public void setAddressKeyword3(String addressKeyword3) {
        this.addressKeyword3 = addressKeyword3;
    }

    public String getAddressKeyword4() {
        return addressKeyword4;
    }

    public void setAddressKeyword4(String addressKeyword4) {
        this.addressKeyword4 = addressKeyword4;
    }

    public String getAddressKeyword5() {
        return addressKeyword5;
    }

    public void setAddressKeyword5(String addressKeyword5) {
        this.addressKeyword5 = addressKeyword5;
    }

    public String getAddressKeyword6() {
        return addressKeyword6;
    }

    public void setAddressKeyword6(String addressKeyword6) {
        this.addressKeyword6 = addressKeyword6;
    }

    public String getAddressKeyword7() {
        return addressKeyword7;
    }

    public void setAddressKeyword7(String addressKeyword7) {
        this.addressKeyword7 = addressKeyword7;
    }

    public String getAddressKeyword8() {
        return addressKeyword8;
    }

    public void setAddressKeyword8(String addressKeyword8) {
        this.addressKeyword8 = addressKeyword8;
    }

    public String getAddressKeyword9() {
        return addressKeyword9;
    }

    public void setAddressKeyword9(String addressKeyword9) {
        this.addressKeyword9 = addressKeyword9;
    }

    public String getAddressKeyword10() {
        return addressKeyword10;
    }

    public void setAddressKeyword10(String addressKeyword10) {
        this.addressKeyword10 = addressKeyword10;
    }

    public String getAddressKeyword11() {
        return addressKeyword11;
    }

    public void setAddressKeyword11(String addressKeyword11) {
        this.addressKeyword11 = addressKeyword11;
    }

    public String getAddressKeyword12() {
        return addressKeyword12;
    }

    public void setAddressKeyword12(String addressKeyword12) {
        this.addressKeyword12 = addressKeyword12;
    }

    public String getAddressKeyword13() {
        return addressKeyword13;
    }

    public void setAddressKeyword13(String addressKeyword13) {
        this.addressKeyword13 = addressKeyword13;
    }

    public String getAddressKeyword14() {
        return addressKeyword14;
    }

    public void setAddressKeyword14(String addressKeyword14) {
        this.addressKeyword14 = addressKeyword14;
    }

    public String getAddressKeyword15() {
        return addressKeyword15;
    }

    public void setAddressKeyword15(String addressKeyword15) {
        this.addressKeyword15 = addressKeyword15;
    }

    public String getAddressKeyword16() {
        return addressKeyword16;
    }

    public void setAddressKeyword16(String addressKeyword16) {
        this.addressKeyword16 = addressKeyword16;
    }

    public String getAddressKeyword17() {
        return addressKeyword17;
    }

    public void setAddressKeyword17(String addressKeyword17) {
        this.addressKeyword17 = addressKeyword17;
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTc_confirm() {
        return tc_confirm;
    }

    public void setTc_confirm(Integer tc_confirm) {
        this.tc_confirm = tc_confirm;
    }

    public String getAddressKeyword21() {
        return addressKeyword21;
    }

    public void setAddressKeyword21(String addressKeyword21) {
        this.addressKeyword21 = addressKeyword21;
    }

    public String getAddressKeyword22() {
        return addressKeyword22;
    }

    public void setAddressKeyword22(String addressKeyword22) {
        this.addressKeyword22 = addressKeyword22;
    }

    public String getAddressKeyword23() {
        return addressKeyword23;
    }

    public void setAddressKeyword23(String addressKeyword23) {
        this.addressKeyword23 = addressKeyword23;
    }

    public String getAddressKeyword24() {
        return addressKeyword24;
    }

    public void setAddressKeyword24(String addressKeyword24) {
        this.addressKeyword24 = addressKeyword24;
    }

    public String getAddressKeyword25() {
        return addressKeyword25;
    }

    public void setAddressKeyword25(String addressKeyword25) {
        this.addressKeyword25 = addressKeyword25;
    }

    public String getAddressKeyword26() {
        return addressKeyword26;
    }

    public void setAddressKeyword26(String addressKeyword26) {
        this.addressKeyword26 = addressKeyword26;
    }

    public String getAddressKeyword31() {
        return addressKeyword31;
    }

    public void setAddressKeyword31(String addressKeyword31) {
        this.addressKeyword31 = addressKeyword31;
    }

    public String getAddressKeyword32() {
        return addressKeyword32;
    }

    public void setAddressKeyword32(String addressKeyword32) {
        this.addressKeyword32 = addressKeyword32;
    }

    public String getAddressKeyword33() {
        return addressKeyword33;
    }

    public void setAddressKeyword33(String addressKeyword33) {
        this.addressKeyword33 = addressKeyword33;
    }
}
