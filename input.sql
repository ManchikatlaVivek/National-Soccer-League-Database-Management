insert into team values('t101','teamone','p2001','onestadium','onecity');
insert into team values('t102','teamtwo','p2002','twostadium','twocity');
insert into team values('t103','teamthree','p3003','threestadium','threecity');
insert into team values('t104','teamfour','p4004','fourstadium','fourcity');
insert into team values('t105','teamfive','p5005','fivestadium','fivecity');
insert into team values('t106','teamsix','p6001','sixstadium','sixcity');

insert into player values('p1001','pt1one','1960-02-09','1977-05-05',11,'t101');
insert into player values('p1002','pt1two','1960-08-08','1979-05-06',12,'t101');
insert into player values('p1003','pt1three','1961-01-22','1981-09-25',13,'t101');
insert into player values('p1004','pt1four','1964-05-26','1980-12-15',14,'t101');
insert into player values('p1005','pt1five','1960-01-01','1980-09-20',15,'t101');

insert into player values('p2001','pt2one','1970-03-19','1982-05-25',21,'t102');
insert into player values('p2002','pt2two','1970-06-28','1981-01-15',22,'t102');
insert into player values('p2003','pt2three','1971-07-02','1986-05-05',23,'t102');
insert into player values('p2004','pt2four','1974-09-06','1987-06-15',24,'t102');
insert into player values('p2005','pt2five','1970-03-21','1980-12-03',25,'t102');

insert into player values('p3001','pt3one','1962-02-09','1982-02-22',31,'t103');
insert into player values('p3002','pt3two','1969-08-08','1989-07-16',32,'t103');
insert into player values('p3003','pt3three','1961-01-02','1980-01-12',33,'t103');
insert into player values('p3004','pt3four','1966-05-20','1986-08-01',34,'t103');
insert into player values('p3005','pt3five','1967-01-21','1984-09-04',35,'t103');

insert into player values('p4001','pt4one','1965-02-09','1987-12-25',41,'t104');
insert into player values('p4002','pt4two','1963-08-28','1985-09-12',42,'t104');
insert into player values('p4003','pt4three','1971-01-12','1989-03-19',43,'t104');
insert into player values('p4004','pt4four','1974-05-16','1979-01-22',44,'t104');
insert into player values('p4005','pt4five','1966-12-01','1979-05-12',45,'t104');

insert into player values('p5001','pt5one','1961-02-09','1990-04-03',51,'t105');
insert into player values('p5002','pt5two','1962-08-18','1982-05-01',52,'t105');
insert into player values('p5003','pt5three','1961-01-12','1986-12-12',53,'t105');
insert into player values('p5004','pt5four','1964-05-06','1989-05-15',54,'t105');
insert into player values('p5005','pt5five','1969-01-21','1981-01-25',55,'t105');

insert into player values('p6001','pt6one','1961-07-19','1980-01-22',61,'t106');
insert into player values('p6002','pt6two','1963-08-21','1990-06-03',62,'t106');
insert into player values('p6003','pt6three','1965-11-06','1989-12-25',63,'t106');
insert into player values('p6004','pt6four','1966-05-14','1982-07-15',64,'t106');
insert into player values('p6005','pt6five','1967-12-13','1986-05-08',65,'t106');


insert into matches values('m001','t101','t102','onestadium','1990-02-02','t101','win','r1001','r1002','r1003');
insert into matches values('m002','t102','t103','twostadium','1991-12-01','t102','win','r1001','r1005','r1003');
insert into matches values('m003','t103','t104','threestadium','1990-04-25','t103','win','r1002','r1005','r1003');
insert into matches values('m004','t104','t105','fourstadium','1991-06-12','t105','win','r1007','r1005','r1003');
insert into matches values('m005','t105','t101','fivestadium','1992-02-22','t105','win','r1008','r1005','r1003');

insert into matchresults values('t101','win',2,'m001');
insert into matchresults values('t102','win',2,'m002');
insert into matchresults values('t103','win',2,'m003');
insert into matchresults values('t105','win',2,'m004');
insert into matchresults values('t105','win',2,'m005');

insert into refree values('r1001','refreeone','1960-05-06',13);
insert into refree values('r1002','refreetwe','1961-04-16',10);
insert into refree values('r1003','refreethree','1961-12-16',11);
insert into refree values('r1004','refreefour','1961-10-06',14);
insert into refree values('r1005','refreefive','1962-01-31',12);
insert into refree values('r1006','refreesix','1962-09-15',11);
insert into refree values('r1007','refreeseven','1961-01-06',11);
insert into refree values('r1008','refreeeight','1961-09-26',14);

insert into playergoals values('p1001',3,'m1001','n','n');
insert into playergoals values('p1002',1,'m1001','n','n');
insert into playergoals values('p2003',1,'m1001','n','y');
insert into playergoals values('p1005',2,'m1001','n','n');
insert into playergoals values('p2002',1,'m1001','y','n');
insert into playergoals values('p1004',4,'m1001','n','y');
insert into playergoals values('p1003',6,'m1001','n','n');
insert into playergoals values('p2005',1,'m1001','y','n');
insert into playergoals values('p2001',0,'m1001','n','n');
insert into playergoals values('p2004',0,'m1001','n','y');


insert into playergoals values('p2001',3,'m1002','n','n');
insert into playergoals values('p1001',2,'m1002','n','n');
insert into playergoals values('p2001',1,'m1002','n','n');


insert into playergoals values('p3001',2,'m1003','n','n');
insert into playergoals values('p4001',1,'m1003','n','n');
insert into playergoals values('p4004',1,'m1003','n','n');
insert into playergoals values('p4002',3,'m1003','n','n');

insert into playergoals values('p5001',3,'m1004','n','n');
insert into playergoals values('p4001',5,'m1004','n','n');
insert into playergoals values('p5004',5,'m1004','n','n');
insert into playergoals values('p5003',6,'m1004','n','n');
insert into playergoals values('p5002',3,'m1004','n','n');

insert into playergoals values('p5001',1,'m1005','n','n');
insert into playergoals values('p5003',2,'m1005','n','n');
insert into playergoals values('p5002',3,'m1005','n','n');
insert into playergoals values('p1003',7,'m1005','n','n');
insert into playergoals values('p1001',9,'m1005','n','n');









