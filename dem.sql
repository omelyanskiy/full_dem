drop database if exists dem;
create database dem;
use dem;
 
create table stat(
statId integer primary key auto_increment,
requestStatus varchar(40) not null);

create table computerType(
computerTypeId integer primary key auto_increment,
computerTechType varchar(40) not null);

create table comm(
commId integer primary key auto_increment,
message varchar(40) not null);

create table typ(
typId integer primary key auto_increment,
typeName varchar(40) not null);

create table klient(
klientId integer primary key auto_increment,
fio varchar(40) not null);

create table mast(
masterId integer primary key auto_increment,
fio varchar(40) not null);

create table usr (
userId integer primary key auto_increment,
login varchar(40) not null,
pass varchar(40) not null,
fio varchar(40) not null,
phone varchar(40) not null,
typId integer  not null,
FOREIGN KEY (typId)  REFERENCES typ (typId));

create table zayavka (
zayavkaId integer primary key auto_increment,
startDate date not null,
computerTechModel varchar(40) not null,
problemDiscription varchar(40) not null,
statId integer  not null,
computerTypeId integer  not null,
klientId integer  not null,
masterId integer,
commID integer,
FOREIGN KEY (statId)  REFERENCES stat (statId),
FOREIGN KEY (computerTypeId)  REFERENCES computerType (computerTypeId),
FOREIGN KEY (klientId)  REFERENCES klient (klientId),
FOREIGN KEY (masterId)  REFERENCES mast (masterId),
FOREIGN KEY (commId)  REFERENCES comm (commId));

insert into computerType(computerTypeId,computerTechType) values (Null,'Компьютер');
insert into computerType(computerTypeId,computerTechType) values (Null,'Ноутбук');
insert into computerType(computerTypeId,computerTechType) values (Null,'Мышка');
insert into computerType(computerTypeId,computerTechType) values (Null,'Клавиатура');

insert into stat(statId,requestStatus) values (Null,'В процессе ремонта');
insert into stat(statId,requestStatus) values (Null,'Готова к выдаче');
insert into stat(statId,requestStatus) values (Null,'Новая заявка');

insert into comm(commID,message) values (Null,'Всё сделаем!');
insert into comm(commID,message) values (Null,'Не переживаейте, починим.');
insert into comm(commID,message) values (Null,'Не переживаейте, починим.');

insert into typ(typId,typeName) values (Null,'Менеджер');
insert into typ(typId,typeName) values (Null,'Техник');
insert into typ(typId,typeName) values (Null,'Оператор');
insert into typ(typId,typeName) values (Null,'Заказчик');

insert into klient(klientId,fio) values (Null,'Белов Роман Добрынич');
insert into klient(klientId,fio) values (Null,'Кузин Михаил Родионович');
insert into klient(klientId,fio) values (Null,'Ковалева Софья Владимировна');
insert into klient(klientId,fio) values (Null,'Глухова Вероника Владимировна');

insert into mast(masterId,fio) values (Null,'Минаева Алиса Тимофеевна');
insert into mast(masterId,fio) values (Null,'Воробьев Фёдор Алексеевич');
insert into mast(masterId,fio) values (Null,'Захарова Алёна Андреевна');
insert into mast(masterId,fio) values (Null,'Гусева Василиса Дмитриевна');
insert into mast(masterId,fio) values (Null,'Миронов Даниэль Львович');
insert into mast(masterId,fio) values (Null,'Князев Арсений Андреевич');

insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Минаева Алиса Тимофеевна','89210563128','login1','pass1',1);
insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Воробьев Фёдор Алексеевич','89535078985','login2','pass2',2);
insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Захарова Алёна Андреевна','89210673849','login3','pass3',2);
insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Гусева Василиса Дмитриевна','89990563748','login4','pass4',3);
insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Миронов Даниэль Львович','89994563847','login5','pass5',3);
insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Белов Роман Добрынич','89219567849','login6','pass6',4);
insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Кузин Михаил Родионович','89219567841','login7','pass7',4);
insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Ковалева Софья Владимировна','89219567842','login8','pass8',4);
insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Глухова Вероника Владимировна','89219567843','login9','pass9',4);
insert into usr(userId,fio,phone,login,pass,typId) values (Null,'Князев Арсений Андреевич','89219567844','login10','pass10',2);

insert into zayavka(zayavkaId,startDate,computerTechModel,problemDiscription,statId,computerTypeId,masterId,klientId,commID) values (Null, '2023-06-06','RDOR GAMING RAGE H290','Выключается после 10 минут работы',1,1,2,2,1);
insert into zayavka(zayavkaId,startDate,computerTechModel,problemDiscription,statId,computerTypeId,masterId,klientId,commID) values (Null, '2023-05-05','ASUS VivoBook Pro 15 M6500QH-HN034 синий','Сильно шумит и греется',1,2,3,3,2);
insert into zayavka(zayavkaId,startDate,computerTechModel,problemDiscription,statId,computerTypeId,masterId,klientId,commID) values (Null, '2022-07-07','ARDOR GAMING Phantom PRO','Перестало работать колёсико',2,3,3,4,3);
insert into zayavka(zayavkaId,startDate,computerTechModel,problemDiscription,statId,computerTypeId,masterId,klientId,commID) values (Null, '2023-08-02','Dark Project KD83A','Сломались некоторые клавиши',3,4,Null,3,Null);
insert into zayavka(zayavkaId,startDate,computerTechModel,problemDiscription,statId,computerTypeId,masterId,klientId,commID) values (Null, '2023-08-02','ASUS ROG Strix G15 G513RW-HQ177 серый','Не загружается система',3,2,Null,4,Null);

select * from zayavka