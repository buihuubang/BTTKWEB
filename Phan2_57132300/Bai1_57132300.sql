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
('79PH212',0,'XE3'),
('77PY984',1,'XE4'),
('76KK947',1,'XE5')
go
insert KHACHHANG values ('K001',N'Trần Văn A','12 LDC','09847564738'),
('K002',N'Nguyễn Văn B','20 LDC','09847564638'),
('K003',N'Trần Văn C','15 DHNT','01647564738'),
('K004',N'Trần Văn D','78 NTMK','09147564738'),
('K005',N'Trần Văn E','12 LDC','09847568538')
go
insert NHATKYTHUE values ('79KH123','K001','20150602','20151003'),
('78NT321','K002','20150515','20150530'),
('79PH212','K003','20150802','20150810'),
('77PY984','K004','20161002','20161110'),
('76KK947','K005','20150302','20150510'),


