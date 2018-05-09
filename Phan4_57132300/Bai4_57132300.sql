create database Bai4_57132300
go
use Bai4_57132300
go
create table LoaiTT(
MaLoaiTT nchar(10) not null primary key,
TenLoaiTT nvarchar(50) not null
)
go
create table TinTuc(
MaTT nchar(10) not null primary key,
TieuDe nvarchar(100) not null,
NgayDang nchar(10) not null,
Anh nchar(100) not null,
MaLoaiTT nchar(10) not null
)
go
insert into LoaiTT(MaLoaiTT,TenLoaiTT) 
values ('GD',N'Giáo Dục'),
('TT',N'Thể Thao'),
('TS',N'Thời Sự')
go 
insert into TinTuc(MaTT,TieuDe,NgayDang,Anh,MaLoaiTT)
values ('GD001',N'Bộ giáo dục quyết định hủy bỏ kì thi THPT Quốc Gia','12/8/2019','GD001.jpg','GD'),
('TT001',N'VĐV Trần Nguyễn Quốc Bảo giành huy chương vàng bộ môn lết ao làng','15/8/2019','TT001.jpg','TT'),
('TS001',N'Tin gì cũng hót','1/5/2019','TS001.jpg','TS')

go 
create proc TinTuc_DS
as
begin
select * from TinTuc
end

go
create proc TinTuc_Xoa
@MaTT nchar(10)
as
begin 
delete from TinTuc where MaTT = @MaTT
end

go
create proc TinTuc_Them
@MaTT nchar(10),
@TieuDe nvarchar(100),
@NgayDang nchar(10),
@Anh nchar(100),
@MaLoaiTT nchar(10)
as
begin
insert into TinTuc(MaTT,TieuDe,NgayDang,Anh,MaLoaiTT)
values (@MaTT,@TieuDe,@NgayDang,@Anh,@MaLoaiTT)
end

go
create proc TinTuc_Sua
@MaTT nchar(10),
@TieuDe nvarchar(100),
@NgayDang nchar(10),
@Anh nchar(100),
@MaLoaiTT nchar(10)
as
begin
update TinTuc
set TieuDe = N''+@TieuDe+'',NgayDang = @NgayDang,Anh =@Anh, MaLoaiTT = @MaLoaiTT
where MaTT = @MaTT
end

go 
create proc LoatTT_DS
as
begin
select * from LoaiTT
end
