create database air_travel;

CREATE TABLE public."Trip"
(
    id integer NOT NULL,
    company_id integer,
    plane character varying,
    town_from character varying,
    town_to character varying,
    time_out timestamp without time zone,
    time_in timestamp without time zone,
    PRIMARY KEY (id)
);

CREATE TABLE public."Pass_in_trip"
(
    id integer NOT NULL,
    trip_id integer,
    passenger_id integer,
    place character varying,
    PRIMARY KEY (id)
);

CREATE TABLE public."Company"
(
    id integer NOT NULL,
    name character varying,
    PRIMARY KEY (id)
);

CREATE TABLE public."Passenger"
(
    id integer NOT NULL,
    name character varying,
    PRIMARY KEY (id)
);

alter table "Pass_in_trip"
    add foreign key (trip_id)
        references "Trip"(id);

alter table "Pass_in_trip"
    add foreign key (passenger_id)
        references "Passenger"(id);

alter table "Trip"
    add foreign key (company_id)
        references "Company"(id);

insert into "Passenger"(id, name)
values (1,'Bruce Willis'),
       (2,'George Clooney'),
       (3,'Kevin Costner'),
       (4,'Donald Sutherland'),
       (5,'Jennifer Lopez'),
       (6,'Ray Liotta'),
       (7,'Samuel L. Jackson'),
       (8,'Nikole Kidman'),
       (9,'Alan Rickman'),
       (10,'Kurt Russell'),
       (11,'Harrison Ford'),
       (12,'Russell Crowe'),
       (13,'Steve Martin'),
       (14,'Michael Caine'),
       (15,'Angelina Jolie'),
       (16,'Mel Gibson'),
       (17,'Michael Douglas'),
       (18,'John Travolta'),
       (19,'Sylvester Stallone'),
       (20,'Tommy Lee Jones'),
       (21,'Catherine Zeta-Jones'),
       (22,'Antonio Banderas'),
       (23,'Kim Basinger'),
       (24,'Sam Neill'),
       (25,'Gary Oldman'),
       (26,'ClINT Eastwood'),
       (27,'Brad Pitt'),
       (28,'Johnny Depp'),
       (29,'Pierce Brosnan'),
       (30,'Sean Connery'),
       (31,'Bruce Willis'),
       (37,'Mullah Omar');

insert into "Company"(id, name)
values (1,'Don_avia'),
       (2,'Aeroflot'),
       (3,'Dale_avia'),
       (4,'air_France'),
       (5,'British_AW');

insert into "Trip"(id, company_id, plane, town_from, town_to, time_out, time_in)
values  (1100, 4, 'Boeing', 'Rostov', 'Paris', '1900-01-01 14:30:00', '1900-01-01T17:50:00.000Z'),
        (1101, 4, 'Boeing', 'Paris', 'Rostov', '1900-01-01 08:12:00', '1900-01-01T11:45:00.000Z'),
        (1123, 3, 'TU-154', 'Rostov', 'Vladivostok', '1900-01-01 16:20:00', '1900-01-02T03:40:00.000Z'),
        (1124, 3, 'TU-154', 'Vladivostok', 'Rostov', '1900-01-01 09:00:00', '1900-01-01T19:50:00.000Z'),
        (1145, 2, 'IL-86', 'Moscow', 'Rostov', '1900-01-01 09:35:00', '1900-01-01T11:23:00.000Z'),
        (1146, 2, 'IL-86', 'Rostov', 'Moscow', '1900-01-01 17:55:00', '1900-01-01T20:01:00.000Z'),
        (1181, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01 06:12:00', '1900-01-01T08:01:00.000Z'),
        (1182, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01 12:35:00', '1900-01-01T14:30:00.000Z'),
        (1187, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01 15:42:00', '1900-01-01T17:39:00.000Z'),
        (1188, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01 22:50:00', '1900-01-02T00:48:00.000Z'),
        (1195, 1, 'TU-154', 'Rostov', 'Moscow', '1900-01-01 23:30:00', '1900-01-02T01:11:00.000Z'),
        (1196, 1, 'TU-154', 'Moscow', 'Rostov', '1900-01-01 04:00:00', '1900-01-01T05:45:00.000Z'),
        (7771, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 01:00:00', '1900-01-01T11:00:00.000Z'),
        (7772, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 12:00:00', '1900-01-02T02:00:00.000Z'),
        (7773, 5, 'Boeing', 'London', 'Singapore', '1900-01-01T03:00:00.000Z', '1900-01-01T13:00:00.000Z'),
        (7774, 5, 'Boeing', 'Singapore', 'London', '1900-01-01T14:00:00.000Z', '1900-01-02T06:00:00.000Z'),
        (7775, 5, 'Boeing', 'London', 'Singapore', '1900-01-01T09:00:00.000Z', '1900-01-01T20:00:00.000Z'),
        (7776, 5, 'Boeing', 'Singapore', 'London', '1900-01-01T18:00:00.000Z', '1900-01-02T08:00:00.000Z'),
        (7777, 5, 'Boeing', 'London', 'Singapore', '1900-01-01T18:00:00.000Z', '1900-01-02T06:00:00.000Z'),
        (7778, 5, 'Boeing', 'Singapore', 'London', '1900-01-01T22:00:00.000Z', '1900-01-02T12:00:00.000Z'),
        (8881, 5, 'Boeing', 'London', 'Paris', '1900-01-01T03:00:00.000Z', '1900-01-01T04:00:00.000Z'),
        (8882, 5, 'Boeing', 'Paris', 'London', '1900-01-01T22:00:00.000Z', '1900-01-01T23:00:00.000Z');

insert into "Pass_in_trip"(id, trip_id, passenger_id, place)
values   (1,1100,1,'1a'),
         (2,1123,3,'2a'),
         (3,1123,1,'4c'),
         (4,1123,6,'4b'),
         (5,1124,2,'2d'),
         (6,1145,3,              '2c'),
         (7,     1181,    1,              '1a'),
         (8,     1181,    6,              '1b'),
         (9,     1181,    8,              '3c'),
         (10,     1181,    5,              '1b'),
         (11,     1182,    5,              '4b'),
         (12,     1187,    8,              '3a'),
         (13,     1188,    8,              '3a'),
         (14,     1182,    9,              '6d'),
         (15,     1145,    5,              '1d'),
         (16,     1187,    10,             '3d'),
         (17,     8882,    37,             '1a'),
         (18,     7771,    37,             '1c'),
         (19,     7772,    37,             '1a'),
         (20,     8881,    37,             '1d'),
         (21,     7778,    10,             '2a'),
         (22,     7772,    10,             '3a'),
         (23,     7771,    11,             '4a'),
         (24,     7771,    11,             '1b'),
         (25,     7771,    11,             '5a'),
         (26,     7772,    12,             '1d'),
         (27,     7773,    13,             '2d'),
         (28,     7772,    13,             '1b'),
         (29,     8882,    14,             '3d'),
         (30,     7771,    14,             '4d'),
         (31,     7771,    14,             '5d'),
         (32,     7772,    14,             '1c');

select "Passenger".name from "Passenger"; --#1 Вывести имена всех людей, которые есть в базе данных авиакомпаний

select "Company".name from "Company";--#2 Вывести названия всеx авиакомпаний

select * from "Trip" where town_from = 'Moscow';--#3 Вывести все рейсы, совершенные из Москвы

select "Passenger".name from "Passenger"
where name like '%man';--#4 Вывести имена людей, которые заканчиваются на "man"

select count(*) from "Trip" where plane = 'TU-134';--#5 Вывести количество рейсов, совершенных на TU-134

select distinct "Company".name, "Trip".plane
from "Trip"
         join "Company" on "Company".id = "Trip".company_id
where plane = 'Boeing';--#6 Какие компании совершали перелеты на Boeing

select distinct  "Trip".plane, "Trip".town_to from "Trip"
where town_to = 'Moscow';--#7 Вывести все названия самолётов, на которых можно улететь в Москву (Moscow)

select distinct  "Company".name, "Trip".town_from
from "Trip"
         join "Company" on "Company".id = "Trip".company_id
where town_from = 'Vladivostok';--#9 Какие компании организуют перелеты с Владивостока (Vladivostok)?

select distinct  "Passenger".name, "Trip".town_to
from "Pass_in_trip"
         join "Trip"  on "Trip".id = "Pass_in_trip".trip_id
         join "Passenger" on "Passenger".id = "Pass_in_trip".passenger_id
where "Passenger".name = 'Bruce Willis';--#14 В какие города летал Bruce Willis

select distinct  "Trip".time_in, "Trip".town_to,"Passenger".name
from "Trip"
         join "Pass_in_trip"  on "Trip".id = "Pass_in_trip".trip_id
         join "Passenger"  on "Passenger".id = "Pass_in_trip".passenger_id
where name = 'Steve Martin' and town_to = 'London';--#15 Выведите дату и время прилёта пассажира Стив Мартин (Steve Martin) в Лондон (London)

select Distinct C.name, "Trip".town_from, "Trip".town_to,count(C.id) as Flight_count
from "Trip"
         join "Company" C on C.id = "Trip".company_id
where town_from = 'Rostov' and town_to = 'Moscow'
group by "Trip".town_to, "Trip".town_from, C.name;--#16 Сколько рейсов совершили авиакомпании с Ростова (Rostov) в Москву (Moscow) ?

SELECT name FROM "Passenger" ORDER BY LENGTH(name) DESC LIMIT 1;--#17 Вывести пассажиров с самым длинным именем

select DISTINCT P.name, count("Pass_in_trip".trip_id) as trip_count, "Pass_in_trip".passenger_id
from   "Pass_in_trip"
           join "Passenger" P on P.id = "Pass_in_trip".passenger_id

group by "Pass_in_trip".passenger_id, P.name
having count("Pass_in_trip".trip_id)>0;--#19 Вывести отсортированный по количеству перелетов (по убыванию) и имени (по возрастанию) список пассажиров, совершивших хотя бы 1 полет.

delete from "Trip" where town_to = 'Moscow';--#21 Удалить все перелеты, совершенные из Москвы (Moscow).
