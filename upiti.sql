select * from osoba;
insert into osoba(id_o, ime, prz, dat_rodj, drzavljanstvo, drzava_rodj, grad, uloga) values (1, 'Nikola', 'Jokic', TO_DATE('1995/02/19', 'yyyy/mm/dd'), 'srpsko', 'Srbija', 'Sombor', 'Kosarkas');
insert into osoba(id_o, ime, prz, dat_rodj, drzavljanstvo, drzava_rodj, grad, uloga) values (2, 'Kevin', 'Durant', TO_DATE('1988/09/29', 'yyyy/mm/dd'), 'americko', 'SAD', 'Washington', 'Kosarkas');
insert into osoba(id_o, ime, prz, dat_rodj, drzavljanstvo, drzava_rodj, grad, uloga) values (3, 'Stephen', 'Curry', TO_DATE('1988/03/14', 'yyyy/mm/dd'), 'americko', 'SAD', 'Akron', 'Kosarkas');
insert into osoba(id_o, ime, prz, dat_rodj, drzavljanstvo, drzava_rodj, grad, uloga) values (4, 'Gregg', 'Popovich', TO_DATE('1949/01/28', 'yyyy/mm/dd'), 'americko', 'SAD', 'East Chicago', 'Trener');

select * from kosarkas;
insert into kosarkas(id_o, visina, tezina, aktivan) values(1, 211, 128, 1); 
insert into kosarkas(id_o, visina, tezina, aktivan) values(2, 208, 108, 1); 
insert into kosarkas(id_o, visina, tezina, aktivan) values(3, 188, 83, 1); 

select * from trener;
insert into trener(id_o) values(4);

select * from tim;
insert into tim(id_tim, osnovan, drzava_osn) values(1, '1967', 'SAD'); --denver
insert into tim(id_tim, osnovan, drzava_osn) values(2, '1967', 'SAD'); --nets
insert into tim(id_tim, osnovan, drzava_osn) values(3, '1946', 'SAD'); --gsw

select * from grad;
insert into grad(id_grad, grad_naziv) values(1, 'Filadelfija');
insert into grad(id_grad, grad_naziv) values(2, 'San Francisko');
insert into grad(id_grad, grad_naziv) values(3, 'Njuark');
insert into grad(id_grad, grad_naziv) values(4, 'Bruklin');
insert into grad(id_grad, grad_naziv) values(5, 'Denver');

select * from tim_grad;
insert into tim_grad(tim_id_tim, grad_id_grad, grad_od, grad_do) values(1, 5, '1967/68', '2021/22'); --denver
insert into tim_grad(tim_id_tim, grad_id_grad, grad_od, grad_do) values(2, 3, '1977/78', '2011/12'); --nets
insert into tim_grad(tim_id_tim, grad_id_grad, grad_od, grad_do) values(2, 4, '2012/13', '2021/22'); --nets
insert into tim_grad(tim_id_tim, grad_id_grad, grad_od, grad_do) values(3, 1, '1946/47', '1961/62'); --gsw
insert into tim_grad(tim_id_tim, grad_id_grad, grad_od, grad_do) values(3, 2, '1962/63', '2021/22'); --gsw

select * from tim_naziv;
insert into tim_naziv(id_naziva, tim_id_tim, tim_naziv, naziv_od, naziv_do) values(1, 1, 'Denver Rockets', '1967/68', '1973/74');
insert into tim_naziv(id_naziva, tim_id_tim, tim_naziv, naziv_od, naziv_do) values(2, 1, 'Denver Nuggets', '1974/75', '2021/22');
insert into tim_naziv(id_naziva, tim_id_tim, tim_naziv, naziv_od, naziv_do) values(3, 2, 'New Jersey Nets', '1977/78', '2011/12');
insert into tim_naziv(id_naziva, tim_id_tim, tim_naziv, naziv_od, naziv_do) values(4, 2, 'Brooklyn Nets', '2012/13', '2021/22');
insert into tim_naziv(id_naziva, tim_id_tim, tim_naziv, naziv_od, naziv_do) values(5, 3, 'Philadelphia Warriors', '1946/47', '1961/62');
insert into tim_naziv(id_naziva, tim_id_tim, tim_naziv, naziv_od, naziv_do) values(6, 3, 'San Francisco Warriors', '1962/63', '1970/71');
insert into tim_naziv(id_naziva, tim_id_tim, tim_naziv, naziv_od, naziv_do) values(7, 3, 'Golden State Warriors', '1971/72', '2021/22');

select * from ugovor;
insert into ugovor(id_ugovor, potpisan, istek, iznos, valuta, ugovor_tip) values(1, TO_DATE('2018/07/9', 'yyyy/mm/dd'), TO_DATE('2023/07/9', 'yyyy/mm/dd'), 147710050, '$', 'Kosarkaski_ug');
insert into ugovor(id_ugovor, potpisan, istek, iznos, valuta, ugovor_tip) values(2, TO_DATE('2019/07/7', 'yyyy/mm/dd'), TO_DATE('2023/07/7', 'yyyy/mm/dd'), 164250000, '$', 'Kosarkaski_ug');
insert into ugovor(id_ugovor, potpisan, istek, iznos, valuta, ugovor_tip) values(3, TO_DATE('2021/08/6', 'yyyy/mm/dd'), TO_DATE('2025/08/6', 'yyyy/mm/dd'), 215000000, '$', 'Kosarkaski_ug');

select * from kosarkaski_ug;
insert into kosarkaski_ug(id_ugovor, tim_id_tim, kosarkas_id_o) values(1, 1, 1);
insert into kosarkaski_ug(id_ugovor, tim_id_tim, kosarkas_id_o) values(2, 2, 2);
insert into kosarkaski_ug(id_ugovor, tim_id_tim, kosarkas_id_o) values(3, 3, 3);

select * from dvorana;
insert into dvorana(naziv_dvo, drzava) values('Ball Arena', 'SAD');
insert into dvorana(naziv_dvo, drzava) values('Barclays Center', 'SAD');
insert into dvorana(naziv_dvo, drzava) values('Chase Center', 'SAD');

select * from par;
insert into par(tim_id_tim, tim_id_tim2) values(3, 1);
insert into par(tim_id_tim, tim_id_tim2) values(2, 3);
insert into par(tim_id_tim, tim_id_tim2) values(2, 1);
insert into par(tim_id_tim, tim_id_tim2) values(1, 2);

select * from utakmica;
insert into utakmica(id_utak,
    dat_utak,
    poeni_dom,
    poeni_gost,
    produzeci,
    liga,
    dvorana_naziv_dvo,
    par_tim_id_tim2,
    par_tim_id_tim,
    tip_utak) values(1, TO_DATE('2021/12/28', 'yyyy/mm/dd'),
    86, 89, 0, 'NBA', 'Chase Center', 1, 3, 'Regularna');
    
insert into utakmica(id_utak,
    dat_utak,
    poeni_dom,
    poeni_gost,
    produzeci,
    liga,
    dvorana_naziv_dvo,
    par_tim_id_tim2,
    par_tim_id_tim,
    tip_utak) values(2, TO_DATE('2021/05/08', 'yyyy/mm/dd'),
    119, 125, 0, 'NBA', 'Ball Arena', 1, 2, 'Regularna');
    
insert into utakmica(id_utak,
    dat_utak,
    poeni_dom,
    poeni_gost,
    produzeci,
    liga,
    dvorana_naziv_dvo,
    par_tim_id_tim2,
    par_tim_id_tim,
    tip_utak) values(3, TO_DATE('2021/01/12', 'yyyy/mm/dd'),
    116, 122, 0, 'NBA', 'Barclays Center', 1, 2, 'Regularna');
    
select * from kos_stat;
insert into kos_stat(kosarkaski_ug_id_ugovor,
    utakmica_id_utak,
    utakmica_naziv_dvo,
    minuti,
    po,
    asist,
    osk,
    dsk,
    bacanja_sut,
    bacanja,
    trojke_sut,
    trojke,
    sutnuti,
    dati,
    izg,
    ukr, 
    blo) values(1, 1, 'Chase Center', 35, 22, 5, 5, 14, 8, 6, 5, 0, 19, 8, 8, 4, 1);
    
insert into kos_stat(kosarkaski_ug_id_ugovor,
    utakmica_id_utak,
    utakmica_naziv_dvo,
    minuti,
    po,
    asist,
    osk,
    dsk,
    bacanja_sut,
    bacanja,
    trojke_sut,
    trojke,
    sutnuti,
    dati,
    izg,
    ukr, 
    blo) values(1, 2, 'Ball Arena', 37, 29, 6,3,4,9,9,5, 0,21, 10, 5, 0, 0);
    
insert into kos_stat(kosarkaski_ug_id_ugovor,
    utakmica_id_utak,
    utakmica_naziv_dvo,
    minuti,
    po,
    asist,
    osk,
    dsk,
    bacanja_sut,
    bacanja,
    trojke_sut,
    trojke,
    sutnuti,
    dati,
    izg,
    ukr, 
    blo) values(2, 3, 'Barclays Center', 36, 34, 13, 0, 9, 7, 6, 7, 4, 18, 12, 7, 0, 0);
    
insert into kos_stat(kosarkaski_ug_id_ugovor,
    utakmica_id_utak,
    utakmica_naziv_dvo,
    minuti,
    po,
    asist,
    osk,
    dsk,
    bacanja_sut,
    bacanja,
    trojke_sut,
    trojke,
    sutnuti,
    dati,
    izg,
    ukr, 
    blo) values(1, 3, 'Barclays Center', 34, 23, 11, 1, 7, 6, 6, 5, 1, 17, 8, 1, 7, 1);
    
create or replace view per_game as
SELECT id_o, ime, prz, round(avg(po), 2) as ppg, round(avg(asist), 2) as apg, round((sum(dati)/sum(sutnuti))*100, 1) as fg_perc
FROM osoba 
    natural join kosarkas
    inner join kosarkaski_ug on id_o = kosarkas_id_o
    inner join kos_stat on kosarkas_id_o = kosarkaski_ug_id_ugovor
group by id_o, ime, prz
having round(avg(asist), 2) > 8
order by ppg desc;

select * from per_game;
    

