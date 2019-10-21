-- to run from sqlplus as red
-- red:

--cleaning--
drop table authors;
drop table author_event;
drop sequence authors_seq;


--creazione authors--
create sequence authors_seq start with 100 increment by 1;
create table authors (
author_id integer 
    constraint author_pk primary key,
first_name varchar2(30)
    constraint author_first_name_nn not null,
last_name varchar2(30)
    constraint author_last_name_nn not null,
born_date date
    constraint author_born_date_nn not null,
born_place varchar2(30)
    constraint author_born_place_nn not null);

create table author_event (
    author_id integer references authors (author_id));
    ---event_id integer references events (event_id));
    
insert into authors values (authors_seq.nextval, 'Alessandro', 'Manzoni', '07-MAR-1785', 'Milano');
insert into authors values (authors_seq.nextval, 'Ugo', 'Foscolo', '10-SET-1778', 'Zante');
insert into authors values (authors_seq.nextval, 'Gabriele', 'D Annunzio', '07-MAR-1785', 'Pescara');
insert into authors values (authors_seq.nextval, 'Giovanni', 'Pascoli', '31-DIC-1855', 'San Mauro Pascoli');
insert into authors values (authors_seq.nextval, 'Luigi', 'Pirandello', '10-DIC-1867', 'Agrigento');
insert into authors values (authors_seq.nextval, 'Giuseppe', 'Ungaretti', '08-FEB-1888', 'Alessandria D Egitto');
insert into authors values (authors_seq.nextval, 'Alda', 'Merini', '21-MAR-1931', 'Milano');
insert into authors values (authors_seq.nextval, 'Cesare', 'Pavese', '09-SET-1908', 'Santo Stefano Belbo');
insert into authors values (authors_seq.nextval, 'Elsa', 'Morante', '18-AGO-1912', 'Roma');
insert into authors values (authors_seq.nextval, 'Italo', 'Calvino', '15-OTT-1923', 'L Avana');
insert into authors values (authors_seq.nextval, 'Primo', 'Levi', '31-LUG-1919', 'Torino');
insert into authors values (authors_seq.nextval, 'Eugenio', 'Montale', '12-OTT-1896', 'Genova');
insert into authors values (authors_seq.nextval, 'Salvatore', 'Quasimodo', '20-AGO-1901', 'Modica');


commit;