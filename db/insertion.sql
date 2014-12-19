-- add users
insert into user values('zy', 'abc123', 'Zheng', 'Yang', '1982-1-7', '');
insert into user values('hn', 'abc123', 'Hongjian', 'Niu', '1990-1-1', '');
insert into user values('kx', 'abc123', 'Ke', 'Xu', '1990-1-1', '');
insert into user values('yw', 'abc123', 'Yangge', 'Wu', '1990-1-1', '');
insert into user values('jl', 'abc123', 'Jianqian', 'Liu', '1990-1-1', '');

-- add Follows
insert into Follows values('zy', 'hn');
insert into Follows values('zy', 'jl');
insert into Follows values('zy', 'kx');
insert into Follows values('zy', 'yw');

insert into Follows values('hn', 'zy');
insert into Follows values('hn', 'jl');
insert into Follows values('hn', 'kx');
insert into Follows values('hn', 'yw');

insert into Follows values('kx', 'zy');
insert into Follows values('kx', 'jl');
insert into Follows values('kx', 'hn');
insert into Follows values('kx', 'yw');

insert into Follows values('yw', 'zy');
insert into Follows values('yw', 'jl');
insert into Follows values('yw', 'hn');
insert into Follows values('yw', 'kx');

insert into Follows values('jl', 'zy');
insert into Follows values('jl', 'yw');
insert into Follows values('jl', 'hn');
insert into Follows values('jl', 'kx');


-- add group
insert into Groups values(1, 'zy', 'Engineering');
insert into Groups values(2, 'zy', 'Database');
insert into GroupsUser values(1, 'kx');
insert into GroupsUser values(1, 'hn');
insert into GroupsUser values(1, 'yw');
insert into GroupsUser values(2, 'hn');
insert into GroupsUser values(2, 'jl');