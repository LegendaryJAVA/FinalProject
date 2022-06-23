-- CREATE-DATE : 2022-06-20

/*
DROP TABLE member;
DROP TABLE movie;
DROP TABLE actor;
DROP TABLE director;
DROP TABLE moviecast;
DROP TABLE article;
DROP TABLE reply;
DROP TABLE auth;
*/

CREATE TABLE member
  (
     memberid        VARCHAR2(20) PRIMARY KEY,  -- PK : 멤버 아이디 : this9999
     memberpw        VARCHAR2(20) NOT NULL,     -- 멤버 비밀번호 평문 : abc123
     membernickname  VARCHAR2(20) NOT NULL,     -- 멤버 닉네임 : 짱쎈알파카
     memberprofile   VARCHAR2(5) NOT NULL,      -- 멤버 프로필 : 임시
     memberbirth     DATE NOT NULL,             -- 멤버 생일 : 1992/02/17
     memberRegDate   DATE NOT NULL,             -- 멤버 가입일 : 2022/06/20
     memberfavorite1 VARCHAR2(10),              -- 멤버 선호 장르1 : 액션
     memberfavorite2 VARCHAR2(10),              -- 멤버 선호 장르2 : 스릴러
     memberfavorite3 VARCHAR2(10)               -- 멤버 선호 장르3 : NULL
  );

CREATE TABLE movie
  (
     docid    VARCHAR2(10) PRIMARY KEY,         -- PK : F39318 (영화 데이터에 따름)
     title    VARCHAR2(100),                    -- 영화 제목 : 키아누
     titleeng VARCHAR2(100),                    -- 영화 영문 제목 : Keanu
     titleetc VARCHAR2(100) NOT NULL,           -- 영화 검색 제목 : 키아누^Keanu^Keanu^Keanu
     nation   VARCHAR2(10),                     -- 영화 개봉국 : 미국
     company  VARCHAR2(10),                     -- 영화사 : ""
     prodyear DATE,                             -- 개봉년도 : 2016
     plot     VARCHAR2(1000),                   -- 줄거리 : 일명 '키 필'로 알려진 엄청난 인기를 얻고 있는 ...
     runtime  NUMBER,                           -- 상영시간 : ""
     genre    VARCHAR2(100),                    -- 장르 : 액션, 코메디
     posters  VARCHAR2(100),                    -- 포스터 주소 : 
     keywords VARCHAR2(100)                     -- 키워드 : ""
  );

CREATE TABLE actor
  (
     actoridx  VARCHAR2(10) PRIMARY KEY,        -- PK : AC000000
     actorid   VARCHAR2(10),                    -- 배우 ID : "" (영화데이터에 따름)
     actornm   VARCHAR2(30) NOT NULL,           -- 배우 이름 : 티파니 브로우어
     actorennm VARCHAR2(30)                     -- 배우 영문 이름 : ""
  );

CREATE TABLE director
  (
     directoridx  VARCHAR2(10) PRIMARY KEY,     -- PK : DR000000
     directorid   VARCHAR2(10),                 -- 감독 ID : 00185351 (영화데이터에 따름)
     directornm   VARCHAR2(30) NOT NULL,        -- 감독 이름 : 자레드 콘
     directorennm VARCHAR2(30)                  -- 감독 영문 이름 : Jared Cohn
  );

CREATE TABLE moviecast
  (
     castidx VARCHAR2(10) PRIMARY KEY,          -- PK : MC000000
     castid  VARCHAR2(10),                     -- 배우, 또는 감독 IDX(자신의 PK)
     docid   VARCHAR2(10) NOT NULL,             -- 영화 ID : F39318
     role    VARCHAR2(30)                       -- 역할 : 배우|감독|각본 등
  );

CREATE TABLE article
  (
     articleid      VARCHAR2(10) PRIMARY KEY,   -- PK : AT000000
     articleauthor  VARCHAR2(10) NOT NULL,      -- 글 작성자 ID : this9999
     articlecontent VARCHAR2(1000) NOT NULL,    -- 글 본문 : <span> 우주 최고의 영화 </span>
     articleregdate DATE NOT NULL,              -- 글 등록일 : 2022/06/11
     articlestar    NUMBER NOT NULL,            -- 글 평점 : 0 ~ 5.0 사이
     articlemovieid VARCHAR2(10) NOT NULL       -- 글 등록 영화 ID : (movie테이블의 docid)
  );

CREATE TABLE reply
  (
     replyid        VARCHAR2(10) PRIMARY KEY,   -- PK : RP000000
     replyauthor    VARCHAR2(10) NOT NULL,      -- 댓글 작성자 ID : this9999
     replycontent   VARCHAR2(1000) NOT NULL,    -- 댓글 본문 : 감자튀김 먹고싶다
     replyregdate   DATE NOT NULL,              -- 댓글 등록일 : 2022/06/12
     replyarticleid VARCHAR2(10) NOT NULL       -- 댓글 등록 본문 ID : 
  );

CREATE TABLE auth
  (
     authid   VARCHAR2(10)  PRIMARY KEY,         -- PK : AT000000
     authname VARCHAR2(30)  NOT NULL,            -- 권한 명
     authdesc VARCHAR2(100) NOT NULL             -- 권한 설명
  );