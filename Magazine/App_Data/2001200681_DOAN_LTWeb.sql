create database [2001200681_DOAN_LTWeb]
go
USE [2001200681_DOAN_LTWeb]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articles](
	[article_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](max) NULL,
	[textbody] [nvarchar](max) NULL,
	[create_time] [datetime] NULL,
	[image] [nvarchar](max) NULL,
	[user_id] [int] NULL,
	[cate_id] [int] NULL,
 CONSTRAINT [PK_articles] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[cate_id] [int] IDENTITY(1,1) NOT NULL,
	[cate_name] [nvarchar](max) NULL,
 CONSTRAINT [PK_categories] PRIMARY KEY CLUSTERED 
(
	[cate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[cmt_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[article_id] [int] NULL,
	[cmt_cotnent] [nvarchar](max) NULL,
	[create_time] [datetime] NULL,
 CONSTRAINT [PK_comments] PRIMARY KEY CLUSTERED 
(
	[cmt_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[usename] [nvarchar](max) NULL,
	[email] [nvarchar](256) NULL,
	[password] [nvarchar](max) NULL,
	[full_name] [nvarchar](max) NULL,
	[avatar] [nvarchar](max) NULL,
	[sefl_des] [nvarchar](max) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[articles] ON 

INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id]) VALUES (1, N'Apple đầu tư 200 triệu USD cho sản xuất tấm nền mini LED', N'Theo PhoneArena, iPad Pro 12,9 inch mà Apple ra mắt trong năm 2021 đi kèm màn hình mini LED thu hút được một lượng lớn khách hàng.<br/>Với sản lượng hiện tại không thể đáp ứng nhu cầu, Apple đã mua các thiết bị sản xuất tấm nền mini LED trị giá hàng trăm triệu USD. Máy móc sản xuất mới sẽ được sử dụng bởi các nhà cung cấp tấm nền mini LED duy nhất của Apple - Taiwan Surface Mounting Technology (TSMT). Báo cáo cũng nói Apple đã phải vật lộn với nhu cầu hiện tại về màn hình cho iPad Pro 12,9 inch 2021.
Apple được cho là đang có kế hoạch giới thiệu công nghệ màn hình mới cho dòng máy tính xách tay MacBook Pro 14 và 16 inch. Các tin đồn cho biết Apple cũng đang có kế hoạch bổ sung tấm nền mini LED cho iPad mini 6 thiết kế lại và iPad giá rẻ. Với khoản đầu tư 200 triệu USD này, Apple hy vọng sẽ cung cấp thêm 700.000 đến 800.000 tấm nền mini LED được sản xuất mỗi tháng.', CAST(N'2021-07-02T09:12:00.000' AS DateTime), NULL, 1, 13)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id]) VALUES (2, N'14 cách giúp bạn tăng cường miễn dịch chống Covid-19', N'Trong khi chờ đợi có đủ vắc xin ngừa Covid-19, một trong những cách tốt nhất để tự bảo vệ mình khỏi sự tấn công của Covid-19 là tăng cường hệ miễn dịch. Sau đây là 14 lời khuyên của bác sĩ tim mạch hàng đầu, của các tổ chức y tế và từ nghiên cứu mới nhất, giúp bạn tăng cường khả năng miễn dịch chống lại Covid-19, theo eatthis.com.
<br/>1. Tránh thực phẩm chế biến
Tiến sĩ Luiza Petre, bác sĩ tim mạch kiêm chuyên gia dinh dưỡng, phó giáo sư lâm sàng về tim mạch tại Trường Y Mount Sinai và là thành viên tích cực của Trường cao đẳng Tim mạch Mỹ, cho biết nên ăn thực phẩm hữu cơ chưa qua chế biến, tránh đường và thực phẩm đóng hộp để giảm viêm và xây dựng hệ miễn dịch.
2. Lập kế hoạch ăn uống lành mạnh
Tiến sĩ Petre cho biết, trái cây và rau quả có chứa các dưỡng chất thực vật giúp bảo vệ chống lại chứng viêm.
Hãy ăn nhiều rau, thảo mộc và trái cây giàu vitamin C, để ngăn ngừa và kiểm soát tình trạng viêm mạn tính, theo eatthis.com.
Chất béo lành mạnh, như chất béo không bão hòa đơn (có nhiều trong dầu ô liu, dầu cải, dầu đậu nành, dầu mè, bơ đậu phộng, các loại hạt và trái bơ) và a xít béo omega-3 cũng giúp giảm viêm.
Đồ chiên và chất béo bão hòa làm tăng tình trạng viêm và làm suy yếu khả năng miễn dịch. Vì vậy, nên tránh mỡ, da động vật, sữa nguyên kem, bơ thực vật, dầu dừa, bánh quy. 3. Ăn nhiều hành tỏi
Tiến sĩ Petre khuyến khích ăn thêm hành tỏi.
Tỏi rất giàu allicin, có đặc tính kháng khuẩn và kháng virus, giúp tăng cường hệ miễn dịch và chống lại cảm lạnh. Hãy ăn mỗi lần 1 tép tỏi, 2 - 3 lần mỗi ngày, theo eatthis.com.
Hành rất giàu quercetin - một chất chống ô xy hóa và flavonoid rất mạnh, có đặc tính kháng virus và giúp miễn dịch. Hành còn chứa nhiều chất dinh dưỡng tăng cường miễn dịch như các hợp chất lưu huỳnh, selen, kẽm và vitamin C.
4. Tăng cường vitamin C
Tiến sĩ Petre chỉ ra rằng các loại trái cây giàu vitamin C, như cam, bưởi và quýt, là nòng cốt của hệ miễn dịch, giúp tăng sản xuất tế bào bạch cầu và cải thiện chức năng của tế bào lympho T - chống lại nhiễm trùng.
5. Ăn thực phẩm giàu omega-3
Thực phẩm giàu omega 3, như cá mòi, cá hồi, trái bơ và các loại hạt, rất tốt trong việc chống lại virus.
Tiến sĩ Petre cho biết, mỗi loại đều tăng cường chức năng của các tế bào miễn dịch, bằng cách cải thiện chức năng của tế bào bạch cầu.
6. Ăn thêm thực phẩm giàu Beta Glucan
Theo tiến sĩ Petre, nấm hương, men, rong biển và tảo đều là những thực phẩm giàu beta glucan - có tác dụng hỗ trợ cải thiện chức năng tế bào T và có đặc tính kháng virus, theo eatthis.com.
Bác sĩ giải thích, vhúng làm tăng phản ứng miễn dịch bằng cách tăng cường các tế bào tiêu diệt tự nhiên và tăng chức năng của đại thực bào, cũng như kích hoạt miễn dịch phòng thủ.
7. Ăn nhiều rau củ màu xanh lá cây
Tiến sĩ Petre khuyến khích bông cải xanh và rau bó xôi chứa đầy vitamin A, C và D, chất xơ, chất chống ô xy hóa. Và chất chống ô xy hóa làm tăng khả năng chống nhiễm trùng của hệ miễn dịch.
Bí quyết là nấu càng ít càng tốt hoặc là ăn sống đối với những thứ ăn sống được.
8. Ăn nhiều thực phẩm giàu vitamin D
Vitamin D là thành phần quan trọng trong việc cải thiện khả năng miễn dịch. Một số thực phẩm giàu vitamin D gồm cá béo, trứng, nấm, sò và trứng cá muối, theo eatthis.com.
Tiến sĩ Petre cho biết: “Chúng được mệnh danh là ''tốt hơn cả vắc xin'' và rất cần để chống lại nhiễm trùng do virus, vì vitamin D tăng cường khả năng miễn dịch tự nhiên". 9. Tiêu thụ nhiều men vi sinh
Tiến sĩ Petre cho biết, khoảng 70% hệ miễn dịch nằm trong ruột. Thực phẩm lên men là chìa khóa để cân bằng hệ vi sinh vật đường ruột và tăng cường hệ miễn dịch. Chúng bảo vệ cơ thể khỏi các mầm bệnh nguy hiểm. Có thể uống chế phẩm sinh học hoặc ăn các loại thực phẩm lên men, như kim chi hoặc dưa muối để cung cấp các vi khuẩn lành mạnh, theo eatthis.com.
10. Vận động và vận động
Tiến sĩ Petre chỉ ra rằng tập thể dục là cách hiệu quả để tăng cường hệ miễn dịch.
Đặc biệt, tập thể dục gây ra sự thay đổi trong các kháng thể và tế bào bạch cầu - những tế bào của hệ miễn dịch của cơ thể chống lại bệnh tật.
Một nghiên cứu gần đây cho thấy rằng tập thể dục ít nhất 5 ngày một tuần làm giảm nguy cơ bị nhiễm trùng đường hô hấp trên.
Người mắc Covid-19, nếu tuân theo thói quen này, có thể giảm được 32 - 41% nguy cơ mắc bệnh nghiêm trọng, theo eatthis.com.
11. Thiền
Tiến sĩ Petre chỉ ra, thiền làm giảm mức độ căng thẳng và mức cortisol, thúc đẩy phản ứng của cơ thể để chống lại virus.
Suy nghĩ tiêu cực, căng thẳng và trạng thái cảm xúc có thể có tác động tiêu cực đến hệ thống miễn dịch, khiến người ta dễ bị nhiễm bệnh hơn.
12. Ngủ ngon giấc
Giấc ngủ giúp hỗ trợ các tế bào và protein của hệ miễn dịch tiêu diệt và phát hiện vi trùng. Nó cũng giúp ghi nhớ các loại vi trùng này, vì vậy trong tương lai hệ miễn dịch có thể chống lại chúng nhanh hơn, tiến sĩ Petre nhấn mạnh.
Ngủ đủ giấc cũng làm tăng đáng kể phản ứng miễn dịch của cơ thể, vì vậy hãy đảm bảo ngủ từ 6 - 7 giờ mỗi đêm.
13. Không uống rượu
Tổ chức Y tế Thế giới cho biết, uống rượu làm suy yếu hệ miễn dịch và do đó làm giảm khả năng chống chọi với các bệnh truyền nhiễm.
14. Không để béo phì
Theo Trung tâm Kiểm soát và Phòng ngừa dịch bệnh Mỹ, béo phì nghiêm trọng làm tăng nguy cơ mắc các biến chứng do Covid-19. Nghiên cứu cho biết, béo phì làm suy giảm chức năng miễn dịch. Hãy giảm cân nếu bị thừa cân, theo eatthis.com.', CAST(N'2021-07-02T09:12:00.000' AS DateTime), NULL, 2, 11)
INSERT [dbo].[articles] ([article_id], [title], [textbody], [create_time], [image], [user_id], [cate_id]) VALUES (10, N'TP.HCM mạnh tay xử phạt ''ra đường không chính đáng''', N'<p>Trong h&ocirc;m qua (11.7), nhiều trường hợp ra đường kh&ocirc;ng c&oacute; l&yacute; do ch&iacute;nh đ&aacute;ng đ&atilde; bị lực lượng chức năng tại c&aacute;c chốt kiểm so&aacute;t dịch bệnh&nbsp;<a href="https://thanhnien.vn/e-magazine/toan-canh-covid-19-tin-tuc-so-lieu-phan-tich-1265104.html" rel="" target="_blank">Covid-19</a>&nbsp;của TP.HCM kiểm tra, xử phạt.</p>

<p>Từ 0 giờ ng&agrave;y 9.7, TP.HCM &aacute;p dụng biện ph&aacute;p&nbsp;<a href="https://thanhnien.vn/tim-kiem/Y2jhu4kgdGjhu4sgMTY=/chi-thi-16.html?m=0&amp;t=&amp;c=0&amp;y=-1&amp;o=" rel="" target="_blank">gi&atilde;n c&aacute;ch x&atilde; hội to&agrave;n địa b&agrave;n theo Chỉ chị 16&nbsp;</a>của Thủ tướng. C&ocirc;ng an TP.HCM lập 12 chốt kiểm so&aacute;t dịch bệnh Covid-19 tại cửa ng&otilde; ra v&agrave;o&nbsp;<a href="https://thanhnien.vn/tphcm/" rel="" target="_blank">TP.HCM</a>; ri&ecirc;ng c&aacute;c quận, huyện v&agrave; TP.Thủ Đức cũng lập khoảng 266 chốt kiểm so&aacute;t việc đi lại theo Chỉ thị 16 của người d&acirc;n b&ecirc;n trong nội &ocirc; TP.HCM.</p>

<p>Tăng cường kiểm so&aacute;t đi lại, nhất l&agrave; việc ra đường khi kh&ocirc;ng thật sự cần thiết rất dễ l&agrave;m gia tăng nguy cơ l&acirc;y lan th&ecirc;m dịch bệnh, được xem l&agrave; một trong những giải ph&aacute;p cấp b&aacute;ch để g&oacute;p phần tận dụng được &ldquo;thời gian v&agrave;ng&rdquo; 15 ng&agrave;y gi&atilde;n c&aacute;ch khống chế, đẩy l&ugrave;i dịch bệnh. V&igrave; thế, sau 2 ng&agrave;y đầu ti&ecirc;n một số nơi c&ograve;n nhắc nhở, đến h&ocirc;m qua hầu hết c&aacute;c chốt kiểm so&aacute;t thực hiện nghi&ecirc;m việc xử l&yacute; c&aacute;c trường hợp ra đường kh&ocirc;ng c&oacute; l&yacute; do ch&iacute;nh đ&aacute;ng.</p>

<p><img alt="" src="/App_Dataimages/1_oara.jpg" style="height:434px; width:771px" /></p>

<h2><strong>Ra khỏi quận mua thực phẩm kh&ocirc;ng được chấp nhận</strong></h2>

<p>Khoảng 15 giờ ng&agrave;y 11.7, PV<em>&nbsp;<a href="https://thanhnien.vn/" rel="nofollow" target="_blank">Thanh Ni&ecirc;n</a></em>&nbsp;c&oacute; mặt tại đường&nbsp;<a href="https://thanhnien.vn/cach-mang-thang-8/" rel="">C&aacute;ch Mạng Th&aacute;ng 8</a>&nbsp;(đoạn gần v&ograve;ng xoay C&ocirc;ng trường D&acirc;n chủ) ghi nhận việc xử l&yacute; của C&ocirc;ng an Q.3 đối với c&aacute;c trường hợp ra đường kh&ocirc;ng ch&iacute;nh đ&aacute;ng. L&atilde;nh đạo Đội CSGT-TT C&ocirc;ng an Q.3 th&ocirc;ng tin 2 ng&agrave;y đầu thực hiện Chỉ thị 16 (ng&agrave;y 9 v&agrave; 10.7), đơn vị chủ yếu nhắc nhở, tuy&ecirc;n truyền cho người d&acirc;n, ri&ecirc;ng ng&agrave;y 11.7 tổ c&ocirc;ng t&aacute;c đ&atilde; lập bi&ecirc;n bản xử l&yacute; 20 trường hợp người d&acirc;n ra đường kh&ocirc;ng c&oacute; l&yacute; do ch&iacute;nh đ&aacute;ng, với mức phạt 2 triệu đồng/trường hợp.</p>

<h3><strong>Thế n&agrave;o l&agrave; ra đường c&oacute; l&yacute; do ch&iacute;nh đ&aacute;ng ?</strong></h3>

<p>Theo Chỉ thị 16 m&agrave; TP.HCM đang &aacute;p dụng, người d&acirc;n chỉ ra ngo&agrave;i trong trường hợp thật sự cần thiết gồm: mua lương thực, thực phẩm, dược phẩm v&agrave; h&agrave;ng h&oacute;a, dịch vụ thiết yếu kh&aacute;c; c&aacute;c trường hợp khẩn cấp như: cấp cứu, kh&aacute;m chữa bệnh; thi&ecirc;n tai, hỏa hoạn, tang lễ; l&agrave;m việc tại c&aacute;c cơ quan, đơn vị nh&agrave; nước, lực lượng vũ trang, cơ quan ngoại giao; l&agrave;m việc tại c&aacute;c cơ sở sản xuất, c&ocirc;ng trường, c&ocirc;ng tr&igrave;nh giao th&ocirc;ng, x&acirc;y dựng; cơ sở&nbsp;<a href="https://thanhnien.vn/tai-chinh-kinh-doanh/" rel="">kinh doanh</a>&nbsp;dịch vụ, h&agrave;ng h&oacute;a thiết yếu (như: lương thực, thực phẩm, dược phẩm; xăng, dầu; điện; nước; nhi&ecirc;n liệu,...); ng&acirc;n h&agrave;ng, kho bạc, c&aacute;c cơ sở kinh doanh dịch vụ trực tiếp li&ecirc;n quan đến hoạt động ng&acirc;n h&agrave;ng v&agrave; bổ trợ doanh nghiệp (như c&ocirc;ng chứng, luật sư, đăng kiểm, đăng k&yacute; giao dịch bảo đảm...), chứng kho&aacute;n, bưu ch&iacute;nh, viễn th&ocirc;ng, dịch vụ hỗ trợ vận chuyển, xuất, nhập khẩu h&agrave;ng h&oacute;a, kh&aacute;m bệnh, chữa bệnh, tang lễ...&nbsp;</p>
', CAST(N'2021-07-12T11:17:06.603' AS DateTime), N'/App_Dataimages/3_xzku.jpg', 4, 17)
SET IDENTITY_INSERT [dbo].[articles] OFF
GO
SET IDENTITY_INSERT [dbo].[categories] ON 

INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (6, N'Văn hóa')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (10, N'Thể thao')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (13, N'Công nghệ')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (15, N'Game')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (16, N'Thời trang')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (17, N'Covid-19')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (18, N'Tuyển dụng')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (23, N'Thời tiết')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (24, N'Breaking news')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (25, N'Bất động sản')
INSERT [dbo].[categories] ([cate_id], [cate_name]) VALUES (26, N'Pháp luật')
SET IDENTITY_INSERT [dbo].[categories] OFF
GO
SET IDENTITY_INSERT [dbo].[comments] ON 

INSERT [dbo].[comments] ([cmt_id], [user_id], [article_id], [cmt_cotnent], [create_time]) VALUES (1, 1, 2, N'Bài viết thật hữu ích!', CAST(N'2021-07-02T09:15:00.000' AS DateTime))
INSERT [dbo].[comments] ([cmt_id], [user_id], [article_id], [cmt_cotnent], [create_time]) VALUES (2, 1, 1, N'Bài viết thật hữu ích với mọi người!', CAST(N'2021-07-02T09:16:00.000' AS DateTime))
INSERT [dbo].[comments] ([cmt_id], [user_id], [article_id], [cmt_cotnent], [create_time]) VALUES (3, 1, 1, N'Thật tuyệt!', CAST(N'2021-07-02T09:19:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[comments] OFF
GO
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [usename], [email], [password], [full_name], [avatar], [sefl_des]) VALUES (1, N'haiDang', N'haiDang2@gmail.com', N'12345', N'HaiDang', NULL, NULL)
INSERT [dbo].[users] ([user_id], [usename], [email], [password], [full_name], [avatar], [sefl_des]) VALUES (2, N'admin', N'admin@gmail.com', N'12345', N'Adminstrator', NULL, NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[accountlogin](
	@email nvarchar(256),
	@password nvarchar(MAX))
as 
begin
	declare @count int
	declare @res bit
	select @count = count(*) from users where email = @email and password = @password
	if @count >= 1
		set @res = 1
	else 
		set @res = 0
	select @res
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[countRowArticles]
as
begin
	SELECT COUNT(*) FROM articles
	end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[countRowCategories]
as
begin
	SELECT COUNT(*) FROM categories
	end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[countRowCmt]
as
begin
	SELECT COUNT(*) FROM comments
	end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[countRowUsers]
as
begin
	SELECT COUNT(*) FROM users
	end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_article](@art_id INT)
AS
   DELETE FROM articles
   WHERE article_id = @art_id
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_cate](@cateid INT)
AS
   DELETE FROM categories
   WHERE cate_id = @cateid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_cmt](@cmt_id INT)
AS
   DELETE FROM comments
   WHERE cmt_id = @cmt_id
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_user](@userid INT)
AS
   DELETE FROM users
   WHERE user_id = @userid
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[findArticles](
	@title nvarchar(max)
)
as
begin
	select * from articles where title like '%@title%'
	end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAll_Articles]
as
select * from articles
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[GetAll_Categories]
as 
select * from categories
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAll_Comments]
as 
select * from comments
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetAll_Users]
as 
select * from users
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getArtById](
	@id int
)
as
begin
	select * from articles where article_id = @id
	end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getCateById](
	@var_id int
)
as
begin
	select * from categories where cate_id = @var_id
	end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insert_article](
	@title nvarchar(max),
	@textbody nvarchar(max),
	@image nvarchar(max),
	@user_id int,
	@cate_id int
)
as
begin
	insert into articles(title,textbody,create_time,image,user_id,cate_id) values(@title,@textbody,GETDATE(),@image, @user_id,@cate_id)
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insert_category](
	@name nvarchar(MAX)
)
as
begin
	insert into categories(cate_name) values(@name)
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_article](
	@id int,
	@title nvarchar(max),
	@textbody nvarchar(max),
	@image nvarchar(max),
	@cateid nvarchar(max)
)
as
begin
	update articles set title = @title, textbody = @textbody, image= @image, cate_id= @cateid  
	where article_id = @id
end
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_article1](
	@id int,
	@title nvarchar(max),
	@textbody nvarchar(max),
	@image nvarchar(max),
	@cateid int
)
as
begin
	update articles set title = @title, textbody = @textbody, image= @image, cate_id= @cateid  
	where article_id = @id
end
GO
/****** Object:  StoredProcedure [dbo].[update_cate]    Script Date: 7/12/2021 11:30:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_cate](
	@var_id int,
	@var_name nvarchar(max)
)
as
begin
	UPDATE categories
	SET cate_name = @var_name
	WHERE cate_id = @var_id;
end
GO
