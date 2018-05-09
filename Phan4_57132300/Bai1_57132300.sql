create database Bai1_57132300
go 
use Bai1_57132300
go
create table DienThoai(
	MaDT varchar(200) not null primary key,
	TenDT nvarchar(500) not null,
	DonGia int not null,
	PhuKien nvarchar(500) not null,
	Loai varchar(50) not null,
)
go 
insert into DienThoai(MaDT,TenDT,DonGia,PhuKien,Loai)
values ('A001','Nokia C5-6',280000,N'Pin,sạc, cáp, tai nghe, hộp sách','Nokia'),
		('A002','Lumia',580000,N'Pin,sạc, cáp, tai nghe, hộp sách','Nokia'),
		('N001','Motorola C5-6',320000,N'Pin,sạc, cáp, tai nghe, hộp sách','Motorola')
go

create proc DienThoai_DS
as
select * from DienThoai

go

create proc DienThoai_Them
	@MaDT varchar(200),
	@TenDT nvarchar(500),
	@DonGia int ,
	@PhuKien nvarchar(500),
	@Loai varchar(50)
as
begin
insert into DienThoai(MaDT,TenDT,DonGia,PhuKien,Loai) 
values (@MaDT,@TenDT,@DonGia,@PhuKien,@Loai)
end

go

create proc DienThoai_Xoa
	@MaDT varchar(200)
as
begin
delete from DienThoai where MaDT = @MaDT
end

go

create proc DienThoai_Sua
	@MaDT varchar(200),
	@TenDT nvarchar(500),
	@DonGia int ,
	@PhuKien nvarchar(500),
	@Loai varchar(50)
as
begin
update DienThoai
set TenDT=@TenDT,DonGia=@DonGia,PhuKien=@PhuKien,Loai=@Loai
where MaDT =@MaDT
end

exec DienThoai_Them 'N002','Moto',2800000,N'Cáp,tai nghe, sạc','Motorola'
exec DienThoai_DS
exec DienThoai_Sua 'N002','Motorola',3200000,N'Cáp, tai nghe, sạc','Motorola'
exec DienThoai_Xoa 'N002'




