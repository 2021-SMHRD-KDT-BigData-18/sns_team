# 지식(지금 나만의 식물)창고 (팀명 : 지식창고)
SNS
![image](CoreProj/src/main/webapp/image/로고새싹누끼.png)

## 서비스 소개
* 서비스명:  지식창고
* 서비스설명: 반려식물을 테마로 한 SNS 서비스
<br>

## 📅 프로젝트 기간
2023.05.11 ~ 2023.05.25 (2주)
<br>

## ⛏ 기술스택
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/337b281f-3e74-4a3f-ba89-19612f394e46)



## ⭐ 주요 기능
* 1 : 1 실시간 채팅
* 캘린더를 활용한 식물 다이어리
* 좋아요, 북마크
* 댓글
<br>


## ⚙ 시스템 아키텍처
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/06e2d49a-e02b-4282-bf1c-247cd32be984)

## 📌 서비스 흐름도
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/b21381b2-c95e-46a8-8dde-7c514fff6f67)

## 📌 ER다이어그램
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/90d063cb-6760-405c-b6bd-c7daf62e2c1d)


## 🖥 화면 구성

### 로그인/회원가입/메인페이지
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/4cf28d19-3f69-40f8-bfb9-0e5b92635fe0)
### 글쓰기
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/45ba97f9-16e1-4ab8-8df7-6c4deab6d4ab)
### 게시글 상세
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/7a8b8710-24bd-4d94-adbe-473927fbfaee)
### 마이페이지, 저장한 게시글
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/983ea375-0225-472b-a887-8adcce9b0e13)
### 식물 상세
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/22f5defe-6725-4d4e-9139-f68fe0d1d4fd)
### 실시간 채팅
![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/fe4e54ed-ddf4-4a10-951b-f4d1a9b285d6)



## 👨‍👩‍👦‍👦 팀원 역할

![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/4204b236-cd90-4b03-beec-9106392ab7bd)



## 🤾‍♂️ 트러블슈팅
  
* 문제1<br>
 실시간 채팅을 구현하기 위해 기존 채팅 목록을 불러오는 데 어려움이 존재. 이를 해결하기 위해 웹소켓을 처리하는 자바 코드에서 채팅 내역을 DB에 담고, 채팅방을 클라이언트가 요청할 때 jsp가 DB의 채팅내역을 불러와 미리 띄워주는 방법을 선택하여 해결하였음.
 ![image](https://github.com/2021-SMHRD-KDT-BigData-18/sns_team/assets/112811673/98e182e1-139f-40ac-aa9c-0f7923f416a1)

