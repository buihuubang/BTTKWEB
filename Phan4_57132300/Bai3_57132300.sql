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
MaLoaiDT nchar(10) not null
)
go
insert into LoaiDT(MaLoaiDT,TenLoaiDT)
values ('NK','Nokia'),
('IP','Iphone'),
('SS','SamSung')
go
insert into DienThoai(MaDT,TenDT,AnhDT,PhuKien,DonGia,MaLoaiDT)
values ('NK001','Nokia','N001.jpg',N'Cáp,sạc,tai nghe',3000000,'NK'),
('IP001','Iphone','P001.jpg',N'Cáp,sạc,tai nghe',30000000,'IP'),
('SS001','SamSung','S001.jpg',N'Cáp,sạc,tai nghe',15000000,'SS')

go
create proc DienThoai_DS
as
begin
select * from DienThoai
end

go 
create proc DienThoai_Them
@MaDT nchar(10) ,
@TenDT nchar(50),
@AnhDT nchar(100),
@PhuKien nvarchar(100),
@DonGia bigint ,
@MaLoaiDT nchar(50)
as
begin
insert into DienThoai(MaDT,TenDT,AnhDT,PhuKien,DonGia,MaLoaiDT)
values (@MaDT,@TenDT,@AnhDT,@PhuKien,@DonGia,@MaLoaiDT)
end

go
create proc DienThoai_Xoa
@MaDT nchar(10)
as
begin
delete from DienThoai where MaDT=@MaDT
end

go
create proc DienThoai_Sua
@MaDT nchar(10),
@TenDT nchar(50),
@AnhDT nchar(100),
@PhuKien nvarchar(100),
@DonGia bigint,
@MaLoaiDT nchar(50)
as
begin
update DienThoai
set TenDT = @TenDT,AnhDT = @AnhDT,PhuKien = N''+@PhuKien+'',DonGia=@DonGia,MaLoaiDT=@MaLoaiDT
where MaDT = @MaDT
end

exec DienThoai_DS
