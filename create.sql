create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id_client integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id_client)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id_client)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id_client)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
create table cliente (id integer not null auto_increment, age integer, email varchar(255), name varchar(255), password varchar(255), primary key (id)) engine=InnoDB
create table doctor (id integer not null auto_increment, name varchar(255), department varchar(255), descripcion varchar(255), graduate_year integer, specialty integer, primary key (id)) engine=InnoDB
create table mensajes (id integer not null auto_increment, message_text varchar(255), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table reservas (id integer not null auto_increment, devolution_date datetime(6), score integer, start_date datetime(6), cliente integer, doctor integer, primary key (id)) engine=InnoDB
create table specialty (id integer not null auto_increment, name varchar(255), descripcion varchar(255), primary key (id)) engine=InnoDB
alter table doctor add constraint FK33jmct509fp9mgtlvpd5ejfjk foreign key (specialty) references specialty (id)
alter table mensajes add constraint FKb8pfw0haaerl6t2r9ensfqtdh foreign key (cliente) references cliente (id)
alter table mensajes add constraint FK3p7q26e1v1svjmltgt0dr5lac foreign key (doctor) references doctor (id)
alter table reservas add constraint FKi4hbv3glhruynvxgas0wcyvm4 foreign key (cliente) references cliente (id)
alter table reservas add constraint FKdtl85ihkw0765gpmnryj2vdim foreign key (doctor) references doctor (id)
