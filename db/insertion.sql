-- add users
insert into user values('zy', 'abc123', 'Zheng', 'Yang', '1982-1-7', '');
insert into user values('hn', 'abc123', 'Hongjian', 'Niu', '1990-1-1', '');
insert into user values('kx', 'abc123', 'Ke', 'Xu', '1990-1-1', '');
insert into user values('yw', 'abc123', 'Yangge', 'Wu', '1990-1-1', '');
insert into user values('jl', 'abc123', 'Jianqian', 'Liu', '1990-1-1', '');

-- add friendship
insert into Friendship values('zy', 'hn');
insert into Friendship values('zy', 'jl');
insert into Friendship values('zy', 'kx');
insert into Friendship values('zy', 'yw');

insert into Friendship values('hn', 'zy');
insert into Friendship values('hn', 'jl');
insert into Friendship values('hn', 'kx');
insert into Friendship values('hn', 'yw');

insert into Friendship values('kx', 'zy');
insert into Friendship values('kx', 'jl');
insert into Friendship values('kx', 'hn');
insert into Friendship values('kx', 'yw');

insert into Friendship values('yw', 'zy');
insert into Friendship values('yw', 'jl');
insert into Friendship values('yw', 'hn');
insert into Friendship values('yw', 'kx');

insert into Friendship values('jl', 'zy');
insert into Friendship values('jl', 'yw');
insert into Friendship values('jl', 'hn');
insert into Friendship values('jl', 'kx');

-- add group
insert into Groups values(1, 'zy', 'Engineering');
insert into Groups values(2, 'zy', 'Database');
insert into GroupsUser values(1, 'kx');
insert into GroupsUser values(1, 'hn');
insert into GroupsUser values(1, 'yw');
insert into GroupsUser values(2, 'hn');
insert into GroupsUser values(2, 'jl');