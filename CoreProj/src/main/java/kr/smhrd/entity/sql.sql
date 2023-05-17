select * from T_USER;
select * from T_FRIEND;
select * from T_POST;
select * from T_POST order by P_DT desc;
select * from T_COMMENT;

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



