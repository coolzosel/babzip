create table customer(
    num int AUTO_INCREMENT,
    name varchar(10),
    pwd varchar(10),
    star int,
    review varchar(100),
    writeday date not null,
    resnum int,
	primary key(num),
    FOREIGN KEY (resnum) REFERENCES food(num)
 );


-- 고객번호 / 고객이름 / 별점 / 한줄평 / 작성일자 / 식당번호
-- 서울
insert into customer(name, pwd, star, review, writeday, resnum) values('홍길동', '0000', 5, '매우 만족스러운 식사를 하고 갑니다 매우 친절하게 응대해주셔서 감사했어요', 20200524, 101);
insert into customer(name, pwd, star, review, writeday, resnum) values('이효리', '0000', 4, '친절한 서버님들, 기념일을 보내기 좋은 공간, 아기자기한 플레이팅과 부담없는 맛 덕분에 좋은시간 보냈어요:)', 20200524, 101);
insert into customer(name, pwd, star, review, writeday, resnum) values('엘', '0000', 5, '4코스에 김밥 추가햇어요. 진짜 맛있었네요ㅠㅠ', 20190513, 101);
insert into customer(name, pwd, star, review, writeday, resnum) values('블랙핑크', '0000', 3, '가보고싶던 곳이었는데.. 조금 실망했어요 ㅠㅠ 튀김은 너무 기름에 절었고.. 샐러드는 짜고 ㅜㅠ', 20190312, 101);
insert into customer(name, pwd, star, review, writeday, resnum) values('김완섭', '0000', 5, '한식 퓨전 미슐랭으로 최고인 것 같아요 너무 맛있게 잘 먹었어요', 20200311, 101);
insert into customer(name, pwd, star, review, writeday, resnum) values('정원민', '0000', 5, '한달 전 예약해서 3층 프라이빗룸 식사. 조용하고 차분히 집중할 수 있어 좋았음. 메뉴들 설명 상세하고 맛 특색있음.', 20200223, 101);
insert into customer(name, pwd, star, review, writeday, resnum) values('정인용', '0000', 5, '퓨전한식인데 코스 내용도 알차고 메뉴마다 맛있어요. 특히 첨에나오는 에피타이저와 마지막 디저트가 맛있어서 좋았어요', 20180123, 101);
insert into customer(name, pwd, star, review, writeday, resnum) values('박람희', '0000', 4, '한번쯤 방문해볼만한 집입니다. 외국손님 접대하기에 좋습니다.', 20191209, 101);
-- 대구
insert into customer(name, pwd, star, review, writeday, resnum) values('김성환', '0000',  5, '에피타이저가 메인보다 더 맛있어요. 파스타 먹었는데 양도 꽤 많고 다음엔 스테이크 먹어봐야겠어요 ', 20200101, 203);
insert into customer(name, pwd, star, review, writeday, resnum) values('상춘재', '0000',  4, '언니 생일파트 때 갔다왔는데 스테이크, 파스타 이런거 드시고 싶으신 분들 완전 강추합니다용', 20190607, 203);
insert into customer(name, pwd, star, review, writeday, resnum) values('김명숙', '0000',  1, '와플맛', 20200713, 203);
insert into customer(name, pwd, star, review, writeday, resnum) values('김종호', '0000',  5, '이런 분위기 넘나 좋아아아아 주위에도 추천했어요! 간만에 진짜 괜찮은 맛집을 알게 됐어요 ㅎㅎ', 20200228, 203);
insert into customer(name, pwd, star, review, writeday, resnum) values('김민주', '0000',  4, '스테이크는 질기지도 않고 먹기 딱 좋았음. 단백질 보충하고 갑니다.', 20191027, 203);
insert into customer(name, pwd, star, review, writeday, resnum) values('김후주', '0000',  2, '예약해서 갔는데.. 맛있었지만 서비스는 아쉬워서 별 세개 뺍니다.', 20191215, 203);
insert into customer(name, pwd, star, review, writeday, resnum) values('오미자', '0000',  3, '스테이크는 괜찮은데 많이 시끄럽고 환기가 안되는거 같아요.', 20200719, 203);
-- 제주
insert into customer(name, pwd, star, review, writeday, resnum) values('김용룡', '0000', 4, '웨이팅 안하고 먹어서 맛있어요 웨이팅 길게 할 정도는 아닌..', 20200309, 302);
insert into customer(name, pwd, star, review, writeday, resnum) values('김미자', '0000', 5, '친절한 사장님이 말아주는 제주 최애 김밥, 제주 올 때마다 사먹는 김밥!', 20200505, 302);
insert into customer(name, pwd, star, review, writeday, resnum) values('이다은', '0000',  3, '맛있어요. 청양고추가 들어가서 매콤합니다. 근데음식 만드시는분은 투명 마스크라도 하셨음 좋겠네요..', 20200220, 302);
insert into customer(name, pwd, star, review, writeday, resnum) values('이온숙', '0000',  5, '우엉 좋아하시는 분들에게 추천하는 다가미 🙂 1인분부터 주문 가능하고 김밥이 커서 좋아요. ', 20200501, 302);
insert into customer(name, pwd, star, review, writeday, resnum) values('이은상', '0000',  5, '제주에서 먹은 김밥들 중에 가격대비 제일 좋았습니다~ 친절하시구 맛도좋아서 또 먹고싶어요~', 20190218, 302);

-- 고객번호 / 고객이름 / 별점 / 한줄평 / 작성일자 / 식당번호
-- 서울 한줄평
insert into customer(name, pwd, star, review, writeday, resnum) values('김멍멍','0000',1,'별로임 노맛',200410,104);
insert into customer(name, pwd, star, review, writeday, resnum) values('박야옹','0000',2,'서비스가 별로였음 다신 안갈듯',200521,104);
insert into customer(name, pwd, star, review, writeday, resnum) values('이짹짹','0000',3,'무난함.. 쏘쏘',200208,104);
insert into customer(name, pwd, star, review, writeday, resnum) values('권음메','0000',4,'맛있어요. 평균 이상이예요.',200520,104);
insert into customer(name, pwd, star, review, writeday, resum) values('최메에','0000',5,'사장님이 친절하고 음식도 맛있었어요! 특히 파스타가 짱!',200417,104);
insert into customer(name, pwd, star, review, writeday, resnum) values('강개굴','0000',3,'왜 맛집인지 모르겠어요. 그냥 보통이예요.',191017,104);
insert into customer(name, pwd, star, review, writeday, resnum) values('김맴맴','0000',3,'먹을게 없을 때 자주 가요',200217,104);

-- 대구 한줄평
insert into customer(name, pwd, star, review, writeday, resnum) values('이정화','0000',1,'음식갖고 장난치지마셈',190816,205);
insert into customer(name, pwd, star, review, writeday, resnum) values('이민지','0000',2,'제가 집에서 해먹는게 더 맛있어요ㅠㅠ',200106,205);
insert into customer(name, pwd, star, review, writeday, resnum) values('임성빈','0000',3,'보통임.. 그저 그래요',200318,205);
insert into customer(name, pwd, star, review, writeday, resnum) values('황인기','0000',5,'퇴근하면 꼭 먹는 곳! 또 갈 거예요~',191225,205);
insert into customer(name, pwd, star, review, writeday, resnum) values('허효선','0000',5,'인생맛집임 ★돈부리가 진짜 최고★',200102,205);
insert into customer(name, pwd, star, review, writeday, resnum) values('김찬준','0000',1,'X',200410,205);
insert into customer(name, pwd, star, review, writeday, resnum) values('신준석','0000',1,'다신 안감-_-',200521,205);
insert into customer(name, pwd, star, review, writeday, resnum) values('장승원','0000',3,'그냥 그랬어요;;',200208,205);
insert into customer(name, pwd, star, review, writeday, resnum) values('신진혁','0000',4,'예 나쁘지 않습니다, 생각나는 게 없을 때 오는 곳',200520,205);
insert into customer(name, pwd, star, review, writeday, resnum) values('주상현','0000',5,'서비스도 좋고 맛도 훌륭해요~',200417,205);

-- 제주 한줄평
insert into customer(name, pwd, star, review, writeday, resnum) values('유재석','0000',3,'제 입맛에는 무난했어요',200503,306);
insert into customer(name, pwd, star, review, writeday, resnum) values('이영자','0000',4,'돈까스 육즙이 대박, 그치만 오래 기다려서 별점 하나 뺌',200411,306);
insert into customer(name, pwd, star, review, writeday, resnum) values('이효리','0000',1,'다시 가고 싶지 않아요',190808,306);
insert into customer(name, pwd, star, review, writeday, resnum) values('김민경','0000',5,'완전 기대이상이예요!! 돈까스가 바삭바삭~',190512,306);
insert into customer(name, pwd, star, review, writeday, resnum) values('이지은','0000',5,'새우튀김이 진짜 맛있어요 숨은 별미ㅠㅠ 제발 꼭 먹으세요',190518,306);

commit;