use htacbook;
create table ifmsg (
    `编号` varchar(50) not null,
    `书名` varchar(50) not null,
    `出版社` varchar(50) not null,
    `作者` varchar(50) not null,
    `出版时间` varchar(50) not null,
    `status` varchar(50) not null,
    `lending_times` varchar(50) not null,
    primary key (`编号`)
) engine=innodb default charset=utf8;