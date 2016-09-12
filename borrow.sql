use htacbook;
create table borrow (
    `操作时间` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `编号` varchar(50) not null,
    `姓名` varchar(50) default null,
    `日期`  date DEFAULT null,
    primary key (`编号`)
) engine=innodb default charset=utf8;