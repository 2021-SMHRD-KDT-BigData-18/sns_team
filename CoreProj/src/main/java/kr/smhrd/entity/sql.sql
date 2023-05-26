select * from T_USER;
select * from T_FRIEND;
select * from T_POST;
select * from T_POST order by P_DT desc;
select * from T_COMMENT;
select * from T_CHATTING;
select * from T_CHATROOM;
select * from T_BOOKMARK;
select * from T_FAVORITES;
select * from T_PLANT;
<<<<<<< HEAD
=======

drop table T_BOOKMARK;


CREATE TABLE T_BOOKMARK
(
	P_SEQ	NUMBER(15,0)	NOT NULL,	-- 게시글 번호
	U_ID	VARCHAR2(30)	NOT NULL,	-- 유저 아이디
	CONSTRAINT T_BOOKMARK_P_SEQ_FK
	FOREIGN KEY (P_SEQ)
	REFERENCES T_POST(P_SEQ)
	ON DELETE CASCADE
);

ALTER TABLE T_BOOKMARK
ADD CONSTRAINT T_BOOKMARK_U_ID_FK
FOREIGN KEY (U_ID)
REFERENCES T_USER(U_ID)
ON DELETE CASCADE;

ALTER TABLE T_COMMENT
ADD CONSTRAINT T_COMMENT_P_SEQ_FK
FOREIGN KEY (P_SEQ)
REFERENCES T_POST(P_SEQ)
ON DELETE CASCADE;


select A.*, B.U_PROFILE_IMG from T_POST A, T_USER B where A.U_ID=B.U_ID order by P_DT desc;


ALTER TABLE T_COMMENT
DROP CONSTRAINT FK_T_COMMENT_P_SEQ_T_POST_P_SE;
FOREIGN KEY (P_SEQ)
REFERENCES T_POST(P_SEQ)
ON DELETE CASCADE;


delete from T_PLANT where U_ID = 'mun1164';


INSERT INTO T_BOOKMARK VALUES(10,'w');
INSERT INTO T_BOOKMARK VALUES(10,'bb');
INSERT INTO T_BOOKMARK VALUES(10,'hh');
INSERT INTO T_BOOKMARK VALUES(6,'안명');
INSERT INTO T_BOOKMARK VALUES(2,'안명');
INSERT INTO T_BOOKMARK VALUES(4,'안명');



>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-BigData-18/sns_team.git

select B.*
from(
select P_SEQ from T_BOOKMARK
	where U_ID='aa'
	) A, T_POST B
	where A.P_SEQ=B.P_SEQ
	;

	
	delete from T_POST
	where P_SEQ = 10;
	delete from T_USER
	where U_ID = '안명';


select *
from(
select * from T_CHATTING
	where CR_SEQ=26
	order by CHAT_DT desc
	)
where rownum<=1;

select * from T_CHATTING
	where CR_SEQ=26
	order by CHAT_DT;

CREATE SEQUENCE T_EVENT_SEQ
START WITH 1
INCREMENT BY 1;
	


delete from T_CHATTING;

delete from T_FRIEND;

insert into T_CHATTING values(T_CHATTING_SEQ.nextval,1,'243','523',sysdate,null);

insert into T_CHATROOM values(T_CHATROOM_SEQ.nextval,'aa','300','523',3,sysdate);


insert into T_FRIEND values(T_FRIEND_SEQ.nextval,'cc','bb',sysdate);

insert into T_POST values(T_POST_SEQ.nextval,'cc','bb',null,sysdate,0,0,'cc');

T_POST_SEQ.nextval,
			#{P_TITLE},
			#{P_CONTENT},
			#{P_FILE, jdbcType=VARCHAR},
			sysdate,
			0,
			0,
			#{U_ID}		


commit

drop SEQUENCE T_CHATROOM_SEQ;
drop TRIGGER T_CHATROOM_AI_TRG;


-- Auto Increment를 위한 Sequence 추가 SQL - T_CHATROOM.CR_SEQ
CREATE SEQUENCE T_CHATROOM_SEQ
START WITH 1
INCREMENT BY 1;

-- Auto Increment를 위한 Trigger 추가 SQL - T_CHATROOM.CR_SEQ
CREATE OR REPLACE TRIGGER T_CHATROOM_AI_TRG
BEFORE INSERT ON T_CHATROOM 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT T_CHATROOM_SEQ.NEXTVAL
    INTO :NEW.CR_SEQ
    FROM DUAL
END;


delete from T_POST
		where P_SEQ = 20;




insert into T_COMMENT values(T_COMMENT_SEQ.nextval, 2,'안녕하세요오오',sysdate,'aa');


select a.*,b.U_PROFILE_IMG from T_COMMENT A, T_USER B
	where a.P_SEQ=2
	and a.U_ID = b.U_ID
	order by CMT_DT desc;

insert into T_FRIEND values(T_FRIEND_SEQ.nextval, 'aa','bb',sysdate);
commit;

CREATE TABLE T_POST_TAG
(
	P_SEQ	NUMBER(15, 0)	NOT NULL,	-- 게시글 번호
	T_SEQ	NUMBER(15, 0)	NOT NULL,	-- 태그 번호
	PRIMARY KEY (T_SEQ)
);

ALTER TABLE T_POST_TAG
	ADD CONSTRAINT FK_T_POST_TAG_P_SEQ_ FOREIGN KEY (P_SEQ)
		REFERENCES T_POST (P_SEQ);	-- FOREIGN KEY 설정

CREATE SEQUENCE T_POST_TAG_SEQ
START WITH 1
INCREMENT BY 1;	-- T_POST_TAG 시퀀스 생성(P_SEQ)	
		
CREATE TABLE T_TAG
(
	T_SEQ	NUMBER(15, 0)	NOT NULL,	-- 태그 번호
	T_NAME	VARCHAR2(600)	NOT NULL,	-- 태그 이름
	PRIMARY KEY (T_SEQ)
);

ALTER TABLE T_TAG
	ADD CONSTRAINT FK_T_TAG_T_SEQ FOREIGN KEY (T_SEQ)
		REFERENCES T_POST_TAG (T_SEQ);	-- FOREIGN KEY 설정
		
CREATE SEQUENCE T_TAG_SEQ
START WITH 1
INCREMENT BY 1;	-- T_TAG 시퀀스 생성(T_SEQ)

DROP TABLE T_POST_TAG;	-- T_POST_TAG 테이블 삭제 

DROP SEQUENCE T_POST_TAG_SEQ;	-- T_POST_TAG_SEQ 시퀀스 삭제

DROP TABLE T_TAG;	-- T_TAG 테이블 삭제

DROP SEQUENCE T_TAG_SEQ;	-- T_TAG_SEQ 시퀀스 삭제

select * from T_POST;


-- ===========================================================

INSERT INTO T_FRIEND values(T_FRIEND_SEQ.nextval, 'bb', 'cc', sysdate);

SELECT * FROM T_FRIEND;



ALTER TABLE T_POST MODIFY (P_LIKES DEFAULT 0);
ALTER TABLE T_POST MODIFY (P_VIEWS DEFAULT 0);

SELECT * FROM T_POST;


CREATE TABLE T_LIKES(
	L_ID	NUMBER(15,0)	AUTO_INCREMENT	PRIMARY KEY,
	P_SEQ	NUMBER(15,0)	NOT NULL,
	U_ID	VARCHAR2(30)	NOT NULL,
	CONSTRAINT T_LIKES_P_SEQ_FK FOREIGN KEY (P_SEQ) REFERENCES T_POST(P_SEQ) ON DELETE CASCADE,
	CONSTRAINT T_LIKES_U_ID_FK FOREIGN KEY (U_ID) REFERENCES T_USER(U_ID) ON DELETE CASCADE
);

drop table t_likes;