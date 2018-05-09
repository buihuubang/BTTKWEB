create database Bai3_57132300
go
use Bai3_57132300
go
create table LoaiDT(
MaLoaiDT nchar(10) not null primary key,
TenLoaiDT nchar(50) not null,
)
go
create table DienThoai(
MaDT nchar(10) not null primary key,
TenDT nchar(50) not null,
AnhDT nchar(100) not null,
PhuKien nvarchar(100) not null,
DonGia bigint not null,
MaLoaiDT nchar(50) not null
)
go