create sequence hibernate_sequence start 1 increment 1
create table budgets (budget_id int8 not null, available_sum int8 not null, is_empty boolean not null, primary key (budget_id))
create table credits (id int8 not null, finish_date timestamp, month_sum int8, paid_off boolean not null, period_months int4 not null, start_date timestamp, sum_left int8, sum_paid int8, sum_pay int8, sum_take int8 not null, user_id int8 not null, primary key (id))
create table roles (role_id int4 generated by default as identity, name varchar(255), primary key (role_id))
create table users (user_id int8 not null, age int4 not null, email_address varchar(255) not null, first_name varchar(25) not null, last_name varchar(25) not null, password varchar(255) not null, username varchar(255) not null, roles_id int4, primary key (user_id))
alter table if exists credits add constraint FKdqrqgej9w17hf6mpkwcf75l1p foreign key (user_id) references users on delete cascade
alter table if exists users add constraint FKbgvg7xuekkcqmpvi3tgkxk85j foreign key (roles_id) references roles