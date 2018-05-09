create database Bai2_57132300
go
use Bai2_57132300
go
create table LoaiSach(
MaLoaiSach nchar(10) not null primary key,
TenLoaiSach nvarchar(50) not null,
)
go
create table Sach(
MaSach nchar(10) not null primary key,
TenSach nvarchar(50) not null,
AnhSach varchar(100) not null,
TacGia nvarchar(50) not null,
NhaXuatBan nvarchar(50) not null,
MaLoaiSach nchar (10) not null
)
go
insert into LoaiSach(MaLoaiSach,TenLoaiSach)
values ('NN',N'Ngoại Ngữ'),
('VH',N'Văn Học'),
('TH',N'Toán Học')
go
insert into Sach(MaSach,TenSach,AnhSach,TacGia,NhaXuatBan,MaLoaiSach)
values ('NN001',N'Gramar','T001.gif',N'Robert',N'Kim Đồng','NN'),
('TH001',N'Đại số tuyến tính','S003.gif',N'Dương Tấn Anh',N'Củ Chi','TH'),
('VH001',N'Ngữ văn tập đọc','D001.gif',N'Vân Anh',N'Kim Đồng','VH')

go
create proc Sach_DS
as
begin
select * from Sach
end

go
create proc Sach_Xoa
@MaSach nchar(10)
as
begin
delete from Sach where MaSach = @MaSach
end

go
create proc Sach_Them
@MaSach nchar(10),
@TenSach nvarchar(50) ,
@AnhSach varchar(100),
@TacGia nvarchar(50) ,
@NhaXuatBan nvarchar(50),
@MaLoaiSach nchar (10)
as
begin
insert into Sach(MaSach,TenSach,AnhSach,TacGia,NhaXuatBan,MaLoaiSach)
values (@MaSach,N''+@TenSach+'',@AnhSach,N''+@TacGia+'',N''+@NhaXuatBan+'',@MaLoaiSach)
end

go
create proc Sach_Sua
@MaSach nchar(10),
@TenSach nvarchar(50) ,
@AnhSach varchar(100),
@TacGia nvarchar(50) ,
@NhaXuatBan nvarchar(50),
@MaLoaiSach nchar (10)
as
begin
update Sach
set TenSach = N''+@TenSach+'',AnhSach = @AnhSach,TacGia = N''+@TacGia+'',NhaXuatBan = N''+@NhaXuatBan+'',MaLoaiSach = @MaLoaiSach
where MaSach = @MaSach
end

select TenLoaiSach from LoaiSach

exec Sach_DS