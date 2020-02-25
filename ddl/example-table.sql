CREATE TABLE example.example_table (
    kode serial primary key,
    nama_depan character varying(50) not null,
    nama_belang character varying(60),
    tanggal_lahir date not null default '1999-01-01',
    saldo decimal default 0,
    aktif boolean default false,
    created_datetime timestamp not null default now()
);

insert into example.example_table (nama_depan, nama_belang, tanggal_lahir, saldo, aktif)
values ('Dimas', 'Maryanto', '1991-01-01', 1000000, true);

select * from example.example_table;

ALTER TABLE example.example_table ADD COLUMN bunga integer default 0;