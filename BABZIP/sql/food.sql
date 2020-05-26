create database food;
use food;

drop table food;

create table food(
    num int,
    name varchar(20),
    addr varchar(50),
    callnum varchar(20),
    type varchar(5),
    open varchar(10),
    close varchar(10),
    img varchar(100),
    primary key(num)    
);

-- DML
-- 서울 한식
insert into food values(101, '정식당', '서울 강남구 선릉로158길 11', '02-517-4654', '한식', '11:00', '17:00','/images/101.jpg');
insert into food values(102, '광화문미진', '서울 종로구 종로 19', '02-730-6198', '한식', '10:00', '22:00','/images/102.jpg');
-- 서울 양식
insert into food values(103, '간판없는가게', '서울 종로구 돈화문로11다길 36', '02-3673-1018', '양식', '11:30', '21:30','/images/103.jpg');
insert into food values(104, '요리하는남자',  '서울 송파구 백제고분로7길 27', '02-419-1511', '양식', '11:30', '23:00','/images/104.jpg');
-- 서울 일식
insert into food values(105, '단디', '서울 송파구 백제고분로45길 7', '02-412-5335', '일식', '11:30', '21:30','/images/105.jpg');
insert into food values(106, '닌자스시', '서울 송파구 백제고분로9길 35', '02-413-0503', '일식', '12:00', '22:30','/images/106.jpg');
-- 대구 한식
insert into food values(201, '팔공막창','대구 중구 동성로6길 42-5','053-426-4333','한식','12:00','03:00','/images/201.jpg');
insert into food values(202, '동인정','대구 중구 중앙대로 406-13','053-431-8988','한식','11:00','21:30','/images/202.jpg');
-- 대구 양식
insert into food values(203, '우드랜드스테이크하우스','대구 중구 교동1길 33','053-253-6285','양식','12:00','20:30','/images/203.jpg');
insert into food values(204, '동성로작은방','대구 중구 동성로2길 24','053-254-7070','양식','12:00','21:00','/images/204.jpg');
-- 대구 일식
insert into food values(205, '알로하돈부리','대구 중구 동성로6길 58','053-253-6482','일식','11:30','21:00','/images/205.jpg');
insert into food values(206, '도마29','대구 중구 동성로1길 46-2','053-216-1129','일식','11:00','21:00','/images/206.jpg');
-- 제주 한식
insert into food values(301, '명진전복','제주 제주시 구좌읍 해맞이해안로 1282','064-782-9944','한식','09:30','21:30','/images/301.jpg');
insert into food values(302, '다가미','제주 제주시 도남로 111','064-758-5810','한식','07:00','15:00','/images/302.jpg');
-- 제주 양식
insert into food values(303, '오데뜨','제주 제주시 한림읍 중산간서로 4995-6','064-799-2748','양식','12:00','21:00','/images/303.jpg');
insert into food values(304, '제주판타스틱버거','제주 서귀포시 표선면 토산중앙로15번길 6','064-787-6990','양식','10:00','19:00','/images/304.jpg');
-- 제주 일식
insert into food values(305, '연돈','제주특별자치 서귀포시 일주서로 968-10','064-738-7060','일식','12:00','16:00','/images/305.jpg');
insert into food values(306, '살찐고등어','제주 제주시 구좌읍 해맞이해안로 1708','064-783-9279','일식','11:00','20:30','/images/306.jpg');


commit;