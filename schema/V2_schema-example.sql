create user example with superuser login password 'example';

create database example;

create schema example;

CREATE TABLE example.example_table (
    kode serial primary key,
    nama_depan character varying(50) not null,
    nama_belang character varying(60),
    tanggal_lahir date not null default '1999-01-01',
    saldo decimal default 0,
    aktif boolean default false,
    created_datetime timestamp not null default now()
);

ALTER TABLE example.example_table
ADD CONSTRAINT saldo_lebih_besar_0 
CHECK (saldo >= 0);

insert into example.example_table (nama_depan, nama_belang, tanggal_lahir, saldo, aktif)
values ('Dimas', 'Maryanto', '1991-01-01', 0, true);

insert into example.example_table (nama_depan, nama_belang, tanggal_lahir, saldo, aktif)
values ('Dimas', 'Maryanto', '1991-01-01', 1000000, true);

ALTER TABLE example.example_table ADD COLUMN bunga integer default 0;

-- need to drop table example.table_relation;
drop table example.table_relation;

create table example.table_relation (
    kelas_id character varying(60) primary key,
    kelas_nama character varying(100),
    kelas_angkatan int
);

ALTER TABLE example.table_relation
ADD CONSTRAINT uq_kelas UNIQUE (kelas_nama, kelas_angkatan);

insert into example.table_relation (kelas_id, kelas_nama, kelas_angkatan) values ('k1', 'Kelas 1', 2011);
insert into example.table_relation (kelas_id, kelas_nama, kelas_angkatan) values ('k2', 'Kelas 2', 2011);
insert into example.table_relation (kelas_id, kelas_nama, kelas_angkatan) values ('k3', 'Kelas 2', 2012);
insert into example.table_relation (kelas_id, kelas_nama, kelas_angkatan) values ('k4', 'Kelas 1', 2011);

ALTER TABLE example.example_table ADD COLUMN kelas_id character varying(60);

ALTER TABLE example.example_table
ADD CONSTRAINT fk_kelas_id FOREIGN KEY (kelas_id)
REFERENCES example.table_relation(kelas_id) ON UPDATE CASCADE ON DELETE CASCADE;

insert into example.example_table (nama_depan, nama_belang, tanggal_lahir, saldo, aktif, kelas_id)
values ('error saldo minus', 'Maryanto', '1991-01-01', 0, true, 'k1');

insert into example.example_table (nama_depan, nama_belang, tanggal_lahir, saldo, aktif, kelas_id)
values ('error saldo minus', 'Maryanto', '1991-01-01', 0, true, 'k5');

delete from example.table_relation where kelas_id = 'k1';