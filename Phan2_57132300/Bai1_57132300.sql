create database QUANLYXE_57132300
go
use QUANLYXE_57132300
go
create table LOAIXE(
	MaLoai Varchar(10)NOT NULL Primary key,
	Tenloai Varchar(20) NOT NULL,
	DonGiaTheoNgay money NOT NULL
	)
go
create table XE(
	SoXe Varchar(10) NOT NULL Primary key,
	TinhTrang bit NOT NULL,
	Maloai Varchar(10) NOT NULL foreign key references LOAIXE(MaLoai)
	)
go
create table KHACHHANG(
	MaKhach Varchar(10)NOT NULL Primary key,
	HoTenKhach Nvarchar(50) NOT NULL,
	DiaChi Nvarchar(70)NOT NULL,
	DienThoai varchar(12) NOT NULL
	)
go
create table NHATKYTHUE(
	SoXe Varchar(10) NOT NULL foreign key references XE(SoXe),
	MaKhach Varchar(10)	NOT NULL foreign key references KHACHHANG(MaKhach),
	TuNgay date NOT NULL,
	DenNgay date NOT NULL,
	Primary key(SoXe,MaKhach,TuNgay)
	)
go
insert LOAIXE values ( 'XE1','Ford',150.000),
('XE2','Honda',300.000),
('XE3','Dream',200.000),
('XE4','Lead',350.000),
('XE5','Wave',100.000)
go
insert XE values ('79KH123',1,'XE1'),
('78NT321',1,'XE2'),
