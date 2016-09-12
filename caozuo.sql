use htacbook;
create table caozuo (
    `操作时间` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `编号` varchar(50) not null,
    `操作` varchar(50) not null,
    `姓名` varchar(50) default null,
    `日期`  date DEFAULT null,
    primary key (`操作时间`)
) engine=innodb default charset=utf8;