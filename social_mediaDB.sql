create database if not exists social_media;
use social_media;


drop table if exists comment;
drop table if exists post;
drop table if exists user;

create table user (
id int(11) not null auto_increment,
first_name varchar(20) not null,
last_name varchar(20) not null,
email varchar(30) not null,
user_name varchar(20) not null,
password char(60) not null,
primary key (id)

);

create table post (
id int(11) not null auto_increment,
user_id int(11) not null,
date_created datetime default current_timestamp,
date_edited datetime default current_timestamp,
message varchar(500),
primary key (id),
foreign key (user_id) references user (id)
);

create table comment (
id int(11) not null auto_increment,
user_id int(11) not null,
post_id int(11) not null,
date_created datetime default current_timestamp,
date_updated datetime default current_timestamp,
message varchar(500),
primary key (id),
foreign key (user_id) references user(id),
foreign key (post_id) references post(id)
);