create table if not exists users
(
    id int auto_increment
    primary key,
    name varchar(50) null,
    age int null
    );

create table if not exists autos
(
    id int auto_increment
    primary key,
    model varchar(50) null,
    color varchar(50) null,
    user_id int null,
    constraint autos_users_id_fk
    foreign key (user_id) references users (id)
    on update cascade on delete cascade
    );

