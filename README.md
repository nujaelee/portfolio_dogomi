<h1>DOGOMI - 팀 프로젝트</h1>
<br>

![image](https://github.com/yoonheeseong/portfolio_dogTraining/assets/146051681/36ccd2e7-9e1f-4053-b387-5436a08bb5b0)

<br>
<br>

## 프로젝트 목적
<br>

- 반려견 훈련소에 대해 찾아보거나 예약을 할 때 훈련소 정보를 한눈에 찾아보기 어렵다.
- 또한 견주들끼리 교육에 관한 정보를 나눌 커뮤니티도 마땅치 않음
- 이번 프로젝트를 통해 훈련소 정보와 각 훈련소에서 제공하는 훈련에 대한 정보, 훈련 예약 시스템을 보다 쉽게 접근할 수 있게 제작하는 것이 목표

---

## 프로젝트 인원
<br>

- 프론트 1명, 백엔드 4명

<br>

---

## 프로젝트 기간
<br>

- 2023-11-16 ~ 2023-11-29

![image](https://github.com/yoonheeseong/portfolio_dogTraining/assets/146051681/01a4f741-7fbd-446f-863b-af1695c20fa0)

<br>

---

## 팀 개발 환경
<br>

- 운영체제 : Windows
- 개발도구 : Visual Studio Code, Intellij
- DB : Mysql
- Server : Apache Tomcat 9.0.82
- Language: HTML5, CSS3, JavaScript, JQuery, AJax, Java, Jstl, JSP
- FrameWork: Spring, MyBatis

<br>

---

## 내가 사용한 기술 스택
<br>

- 운영체제 : Windows
- 개발도구 : Visual Studio Code, Intellij
- DB : Mysql
- Server : Apache Tomcat 9.0.82
- Language: HTML5, CSS3, Java, Jstl, JSP
- FrameWork: Spring, MyBatis

<br>

---

## ER-다이어그램
<br>

![image](https://github.com/yoonheeseong/portfolio_dogTraining/assets/146051681/1b464463-71ec-41bf-a3df-0639919b8990)

## 팀프로젝트중 담당하여 구현한 부분
훈련소 페이지
- 예약, 찜, 기능이 포함된 훈련목록 불러오기

게시판1 (후기게시판)
- 게시물 작성시 작성자, 이미지파일, 게시내용, 예약한 훈련 목록을 등록하고 리스트로 불러오기

게시판2 (커뮤니티 게시판)
- 게시물 작성시 작성자, 이미지파일, 게시내용을 등록하고 댓글 등록 수정 삭제 가능

<br>

## 메인화면

---

###### - 훈련소화면 

![trainCenter](https://github.com/nujaelee/portfolio_dogomi/assets/146051658/40f8786a-bca6-44a8-b927-5e48f9778ab4)
1. 상단에는 훈련소의 정보를 보여주고 하단은 해당 훈련소에서 제공하는 훈련이 나열됩니다.
2. 견주가 이미 찜한 훈련이라면 검정색 발바닥으로 나타납니다.
3. 추가로 찜을 하게 되면 발바닥이 검정색으로 바뀌고 찜을 취소하면 하얀색 발바닥으로 바뀝니다.
4. 예약 내역과 찜 해둔 내역은 DB에 추가되어 마이페이지에서 확인할 수 있습니다.

  <br>
  <br>

###### - 게시판(후기 게시판)

![review](https://github.com/nujaelee/portfolio_dogomi/assets/146051658/1f0d9c35-851c-4412-b7c1-e193f2f622dc)
1. 키워드가 포함된 내용과 작성자를 선택해 입력한 검색어로 검색할 수 있습니다.
2. 후기에는 예약한 훈련소와 후기 게시글 내용, 작성자 아이디가 포함되어 있고, 이미지도 포함할 수 있습니다.
3. 글쓰기 버튼을 누르면 글쓰기 화면으로 이동하고, 비 로그인 인 경우 로그인 폼으로 이동합니다.
4. 가장 상단의 게시물처럼 내가 작성한 리뷰라면 수정과 삭제 버튼이 보입니다.

![reviewWrite](https://github.com/nujaelee/portfolio_dogomi/assets/146051658/a0c32ca5-8b89-4fc0-9720-1e175b7506d5)
1. 견주가 예약한 훈련소 목록을 불러와 후기를 작성하고 싶은 훈련소를 고를 수 있습니다.
   (훈련을 예약한 적이 없다면 글쓰기가 불가능합니다.)
2. 1.에서 선택한 훈련소와 사진, 내용을 작성하여 등록할 수 있습니다.
<br>

---


###### - 게시판 글목록(커뮤니티 게시판)
![comuList](https://github.com/nujaelee/portfolio_dogomi/assets/146051658/bb23c612-12a0-4027-9440-88e2f85e4609)
1. 후기 페이지와 마찬가지로 키워드가 포함된 내용과 작성자를 선택해 입력한 검색어로 검색할 수 있습니다.
2. 후기 리스트와는 다른 점은 게시물을 보려면 게시물을 클릭해 이동해야 합니다.
<br>

##### - 게시판 글 페이지(커뮤니티 게시판)
![comuWrite](https://github.com/nujaelee/portfolio_dogomi/assets/146051658/b9f08d8b-3785-45cc-a0ad-7884ab4e4e98)
1. 게시글 작성)
- 제목과 내용을 포함하여야 하고 이미지파일을 등록할 수 있습니다.
2. 게시글 조회)
- 등록된 제목과 내용, 이미지파일을 볼 수 있습니다. 추가로 댓글 작성 및 수정, 삭제를 할 수 있습니다.
3. 게시글 수정)
- 제목과 내용, 이미지파일을 재 등록할 수 있습니다.
4. 게시글 삭제)
- 작성한 게시물을 삭제할 수 있습니다.

<br>


