CREATE TABLE example.example_table (
    kode serial primary key,
    nama_depan character varying(50) not null,
    nama_belang character varying(60),
    tanggal_lahir date not null default '1999-01-01',
    saldo decimal default 0,
    aktif boolean default false,
    created_datetime timestamp not null default now()
);

-- # error insert because null contarint
-- insert into example.example_table (nama_depan, nama_belang, tanggal_lahir, saldo, aktif)
-- values (null, 'Maryanto', '1991-01-01', 1000000, true);

-- # error insert because null contarint
-- insert into example.example_table ( nama_belang, tanggal_lahir, saldo, aktif)
-- values ('Maryanto', '1991-01-01', 1000000, true);

insert into example.example_table (nama_depan, nama_belang, tanggal_lahir, saldo, aktif)
values ('', 'Maryanto', '1991-01-01', 1000000, true);

select * from example.example_table;

ALTER TABLE example.example_table ADD COLUMN bunga integer default 0;

create table example.table_relation (
    kelas_id character varying(60) primary key,
    kelas_nama character varying(100) unique
);

insert into example.table_relation (kelas_id, kelas_nama) values ('k1', 'Kelas 1');
insert into example.table_relation (kelas_id, kelas_nama) values ('k2', 'Kelas 1');

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