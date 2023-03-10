USE [master]
GO
/****** Object:  Database [ahj]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE DATABASE [ahj]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ahj', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.DZUNG\MSSQL\DATA\ahj.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ahj_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL15.DZUNG\MSSQL\DATA\ahj_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ahj] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ahj].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ahj] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ahj] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ahj] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ahj] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ahj] SET ARITHABORT OFF 
GO
ALTER DATABASE [ahj] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ahj] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ahj] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ahj] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ahj] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ahj] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ahj] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ahj] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ahj] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ahj] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ahj] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ahj] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ahj] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ahj] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ahj] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ahj] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ahj] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ahj] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ahj] SET  MULTI_USER 
GO
ALTER DATABASE [ahj] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ahj] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ahj] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ahj] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ahj] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ahj] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ahj] SET QUERY_STORE = OFF
GO
USE [ahj]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookId] [nvarchar](max) NULL,
	[BName] [nvarchar](30) NOT NULL,
	[BPrice] [float] NOT NULL,
	[BQuantity] [int] NOT NULL,
	[BDescription] [nvarchar](max) NOT NULL,
	[BPicture] [nvarchar](max) NOT NULL,
	[BAuthor] [nvarchar](30) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[RequestId] [int] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatId] [nvarchar](max) NOT NULL,
	[CatName] [nvarchar](30) NOT NULL,
	[CatDescription] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CName] [nvarchar](20) NOT NULL,
	[CAddress] [nvarchar](max) NOT NULL,
	[CEmail] [nvarchar](max) NOT NULL,
	[CGender] [nvarchar](1) NOT NULL,
	[CBirthday] [datetime2](7) NOT NULL,
	[CPhoneNumber] [nvarchar](max) NOT NULL,
	[CPicture] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[BookId] [int] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CatId] [nvarchar](max) NOT NULL,
	[CatName] [nvarchar](30) NOT NULL,
	[CatDescription] [nvarchar](max) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Requests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StoreOwners]    Script Date: 12/24/2022 3:30:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StoreOwners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SName] [nvarchar](20) NOT NULL,
	[SPhone] [nvarchar](10) NOT NULL,
	[SGender] [nvarchar](1) NOT NULL,
	[SPicture] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_StoreOwners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.24')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221222015439_ahc', N'3.1.24')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221222022959_alcv', N'3.1.24')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221223082903_a', N'3.1.24')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221223094242_Final', N'3.1.24')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221223094741_Final1', N'3.1.24')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'A', N'Administrator', N'Administrator', N'b0b01b73-0b77-49f1-9fbc-d8646a8a584f')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'C', N'Customer', N'Customer', N'99e4e86f-e7a7-4f59-a5ba-6b70c472237d')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'S', N'storeOwner', N'storeOwner', N'85ca6900-26b5-4da4-97a7-ec7cc7638b22')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1', N'A')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3', N'C')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2', N'S')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1', N'Dung', N'dung@gmail.com', N'dung@gmail.com', NULL, 1, N'AQAAAAEAACcQAAAAEO9L0qrNpsP7I4IZWmWt0Jh+Ql/opXfq9rKURJEk6/kvB4llJ2E2oYy6wh/FrEaIjg==', N'ae608304-a153-430b-b00a-28dee544b1e8', N'9f7d2c83-4cad-41be-b1c4-be9499f5b63e', NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2', N'Truong', N'truong@gmail.com', N'truong@gmail.com', NULL, 1, N'AQAAAAEAACcQAAAAEMp5rzkTZVjefu9+tc8HG6CQFDZZYYpJHPBAQnWHjy0EwjeroYmXdSpeIlPEJUiF9Q==', N'6b6d9148-56d8-497c-90e9-f07c7d53fa50', N'8017ff5f-d5b0-416c-8812-264e7f3e82eb', NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3', N'Dat', N'dat@gmail.com', N'dat@gmail.com', NULL, 1, N'AQAAAAEAACcQAAAAEHbWvW5HOpcKR/mmI0ETnmk/N76Q795s7gbe4ZiTfuXxXBPxdAzAbe9ilvNTVqrhng==', N'25b774a2-b5ec-4bce-9598-906929df3b75', N'ea8f654b-25ac-4bf0-808d-0381072bf6bc', NULL, 0, 0, NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (1, N'F14', N'BookVIP11111', 30, 19, N'VIPIVPIOIPOPIVIOPOIPIOPIOPOIPVOIPVIOPIOPVIOPV', N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935339400189.jpg', N'Dzung', 2, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (2, N'F78', N'Thao Túng Tâm Lý', 32, 9, N'Thao túng tâm lý” là một dạng của lạm dụng tâm lý. Cũng giống như lạm dụng tâm lý, thao túng tâm lý có thể xuất hiện ở bất kỳ môi trường nào, từ bất cứ đối tượng độc hại nào. Đó có thể là bố mẹ ruột, anh chị em ruột, người yêu, vợ hoặc chồng, sếp hay đồng nghiệp… của bạn. Với tính chất bí hiểm, âm thầm gây hại, thao túng, lạm dụng tâm lý làm tổn thương cảm xúc, lòng tự trọng, cuộc sống của mỗi nạn nhân. Những người từng bị lạm dụng tâm lý thường không thể miêu tả rõ ràng điều gì đã xảy ra với mình. Trong nhiều trường hợp, nạn nhân bị thao túng đến mức tự hỏi có phải họ là người có lỗi, thậm chí họ có phải là người độc hại trong mối quan hệ đó.', N'https://salt.tikicdn.com/cache/750x750/media/catalog/producttmp/80/19/44/8f85b0f87f166b93f8b692034cc15f50.jpg.webp', N'TruongYa', 3, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (3, N'F74', N'Không Phải Sói ', 22, 30, N'Trong thời đại mà mọi thứ đều rất chóng vánh này, ranh giới giữa tốt và xấu, đúng và sai đôi lúc là không tồn tại.  Cái tốt mà chúng ta nghĩ, hóa ra lại là xấu trong mắt kẻ khác.  Cái đúng ở thời điểm này, đến một thời điểm khác lại trở thành sai.', N'https://salt.tikicdn.com/cache/750x750/ts/product/09/2b/e4/e220a9a28a35a7c6ed3336e89c09178b.jpg.webp', N'Ngoc', 1, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (4, N'F01', N'Tâm Lý Học Thành Công', 50, 29, N'Cuốn sách sẽ cho bạn thấy không chỉ khả năng và tài trí mới mang lại thành công cho chúng ta, mà phần lớn do cách tiếp cận mục tiêu bằng lối tư duy nào. Việc tán dương trí thông minh và khả năng của con bạn không hề nuôi dưỡng lòng tự trọng và dẫn đến thành tựu, mà thậm chí còn phương hại đến thành công sau này. Với tư duy đứng đắn, chúng ta có thể tạo động lực cho con cái và giúp chúng phát triển trong trường học, cũng như đạt được mục tiêu của bản thân trong cuộc sống và sự nghiệp. Dweck đã giúp tất cả các bậc cha mẹ, giáo viên, CEO và vận động viên thấy một ý tưởng đơn giản về não bộ có thể tạo ra tình yêu học tập và sự kiên trì – cơ sở cho những thành tựu vĩ đại ở mọi lĩnh vực.', N'https://salt.tikicdn.com/cache/750x750/ts/product/1d/9f/f6/48c11954c3829ad8a8211540644230e4.jpg.webp', N'Dat', 2, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (5, N'F21', N'HÀNH VI ĐỌC VỊ CẢM XÚC', 30, 10, N'Chúng ta muốn hiểu được đối phương trước khi họ bắt đầu nói. Chúng ta muốn thấy được động cơ của họ. Chúng ta muốn có thể bảo vệ chính mình. Chúng ta muốn có thể kết nối và giao tiếp tốt hơn. Chúng ta muốn trí tuệ cảm xúc của mình được nâng cao. Chúng ta muốn phân nhóm những người mình gặp để có thể ứng xử với họ một cách phù hợp hơn. Chúng ta muốn biết cách để hấp dẫn mọi người, dù đó là người chúng ta muốn hẹn hò hay là bất kỳ ai. Chúng ta muốn biết liệu rằng họ có đang nói dối không hay cảm xúc thực sự của họ là gì, dẫu rằng những lời họ nói ra có thể trái ngược hoàn toàn so với những gì họ cảm nhận. Ai cũng có lý do riêng để muốn phân tích người khác với “tốc độ ánh sáng”.', N'https://salt.tikicdn.com/cache/750x750/ts/product/fc/9c/e6/5751e6e758cfc22ff66f822279f770f0.PNG.webp', N'Son', 2, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (6, N'F02', N'Hướng Nghiệp Thời Đại 4.0', 22, 22, N'Trong cơn bão công nghệ, dường như mọi phụ huynh đều mong muốn con em mình theo đuổi các ngành học “hái ra tiền” như khoa học máy tính, công nghệ thông tin, lập trình, cơ khí chế tạ Nhưng liệu các khóa học chuẩn chuyên ngành công nghệ có là con đường thành công duy nhất? Liệu có khả thi khi cho rằng hệ thống giáo dục khai phóng (liberal arts), với phong cách cung cấp tri thức tự do, tổng quát và tập trung vào những kiến thức xã hội vẫn có thể tạo ra nguồn nhân lực chất lượng cho kỷ nguyên 4.0?', N'https://salt.tikicdn.com/cache/750x750/ts/product/ad/b7/15/ad1765f928b27dccfe695ee0742e1eb5.png.webp', N'TruongYa', 3, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (7, N'F03', N'Great TED Talks', 39, 39, N'Great TED Talks: Sáng tạo trong thời đại mới - Phá vỡ quy chuẩn là cuốn “thực đơn” màu sắc gồm 100 lời khuyên được đúc kết từ 100 bài diễn văn TED hay nhất cho những người làm nghề sáng tạo. Cuốn sách đưa ra những ý tưởng có thể áp dụng vào bất cứ công việc nào yêu cầu tính sáng tạo, dù là nghệ thuật, sáng tạo nội dung, viết lách, vẽ minh họa, thiết kế, hoạt họa, làm nhạc, làm phim, diễn xuất – hoặc bất cứ công việc nào yêu cầu trí tưởng tượng, sự sáng tạo và tư duy vượt giới hạn.', N'https://salt.tikicdn.com/cache/750x750/ts/product/4c/71/19/ff1d4724e6719c79acb915dba51ea5d4.jpg.webp', N'Dzung', 1, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (8, N'F04', N'Giảm Cân & Đẹp Dáng', 6, 12, N'Nếu bạn tìm đọc cuốn sách này, có lẽ là bạn đang gặp khó khăn về vấn đề cân nặng. Có thể bạn đã thử một số chương trình dinh dưỡng với nhiều phương pháp khác nhau - những phương pháp này thường quy trách nhiệm cho việc ăn quá nhiều thức ăn chứa chất béo và đường. Nhưng sự thật không đơn giản như vậy. Bệnh thừa cân còn dính dáng đến di truyền, hành vi, tâm lý - và yếu tố đầu tiên bị bỏ sót trong hầu hết các phương pháp ăn kiêng là một kế hoạch rõ ràng để xử lý những vấn đề tâm lý giúp chúng ta thay đổi nhận thức về dinh dưỡng.', N'https://salt.tikicdn.com/cache/750x750/ts/product/0d/b1/ac/3751c00f0641b9761f30f11581ebd9b2.jpg.webp', N'Dat', 2, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (9, N'F15', N'Cây Cam Ngọt', 32, 66, N'“Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.”', N'https://salt.tikicdn.com/cache/750x750/ts/product/5e/18/24/2a6154ba08df6ce6161c13f4303fa19e.jpg.webp', N'TruongYa', 2, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (10, N'F05', N'Bắt Trẻ Đồng Xanh', 49, 1, N'Holden Caulfield, 17 tuổi, đã từng bị đuổi học khỏi ba trường, và trường dự bị đại học Pencey Prep là ngôi trường thứ tư. Và rồi cậu lại trượt 4 trên 5 môn học và nhận được thông báo đuổi học. Câu chuyện kể về chuỗi ngày tiếp theo sau đó của Holden, với ánh nhìn cay độc, giễu cợt vào một cuộc đời tẻ nhạt, xấu xa, trụy lạc và vô phương hướng của một thanh niên trẻ.', N'https://salt.tikicdn.com/cache/750x750/ts/product/1b/23/23/fc63679e8f1ce6d6f982492cf72d8f9b.jpg.webp', N'Son', 2, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (11, N'F06', N'Chiến Binh Cầu Vồng', 21, 35, N'“Thầy Harfan và cô Mus nghèo khổ đã mang đến cho tôi tuổi thơ đẹp nhất, tình bạn đẹp nhất, và tâm hồn phong phú, một thứ gì đó vô giá, thậm chí còn có giá trị hơn những khao khát mơ ước. Có thể tôi lầm, nhưng theo ý tôi, đây thật sự là hơi thở của giáo dục và linh hồn của một chốn được gọi là trường học.” - (Trích tác phẩm)', N'https://salt.tikicdn.com/cache/750x750/ts/product/a1/ef/4f/0b39e40dca3827604c8bc4e867cc9423.jpg.webp', N'Dzung', 2, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (12, N'F07', N'Chân Dung Kẻ Phạm ', 36, 20, N'Tội phạm, nhất là những vụ án mạng, luôn là một chủ đề thu hút sự quan tâm của công chúng, khơi gợi sự hiếu kỳ của bất cứ ai. Một khi đã bắt đầu theo dõi vụ án, hẳn bạn không thể không quan tâm tới kết cục, đặc biệt là cách thức và động cơ của kẻ sát nhân, từ những vụ án phạm vi hẹp cho đến những vụ án làm rúng động cả thế giới.', N'https://salt.tikicdn.com/cache/750x750/ts/product/e4/a3/52/4845a31ebb7c0b75766ef9272506f236.jpg.webp', N'Hoang', 1, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (13, N'F08', N'How Psychology Works', 30, 30, N'Tìm hiểu về các vấn đề tâm trí của con người luôn đầy sức hấp dẫn và lôi cuốn, vì vậy mà tâm lý học ra đời, hình thành và phát triển rất nhiều các học thuyết và trường phái. Cuốn sách này dẫn dắt bạn đọc qua hành trình tìm hiểu các học thuyết và trường phái đó, về cách các nhà tâm lý diễn giải hành xử và tâm trí con người. Tại sao chúng ta có những hành vi, suy nghĩ và cảm xúc như vậy, chúng diễn ra và kết thúc như thế nào, chúng ảnh hưởng lâu dài, gián đoạn hay ngắn ngủỉ đến đời sống của chúng ta ra sao, làm thế nào để chúng ta thoát khỏi những tác động tiêu cực của chúng?', N'https://salt.tikicdn.com/cache/750x750/ts/product/2b/84/ff/cb34637573525a998596b58d6939411e.jpg.webp', N'TruongYa', 3, NULL)
INSERT [dbo].[Books] ([Id], [BookId], [BName], [BPrice], [BQuantity], [BDescription], [BPicture], [BAuthor], [CategoryId], [RequestId]) VALUES (15, N'F10', N'Mèo và triết lý nhân sinh', 40, 36, N'Nếu loài mèo quay sang hứng thú với triết học thì đây sẽ là một nhánh thú vị của trường phái hư cấu kì khôi. Thay vì coi đây là liều thuốc chữa chứng lo âu, những triết gia mèo sẽ tham gia vào môn triết học như thể đây là một trò chơi vậy.  Nhưng loài mèo không cần triết học. Tuân theo bản chất tự nhiên của mình, chúng hài lòng với những gì cuộc sống đem lại. Loài người thì ngược lại, họ bất mãn với bản chất của mình như thể đó là điều tự nhiên. Bất chấp những kết cục bi thảm và kì khôi có thể đoán trước được, loài động vật mang tên “con người” không bao giờ từ bỏ việc nỗ lực trở thành một thứ gì đó không phải là mình.', N'https://salt.tikicdn.com/cache/750x750/ts/product/f3/9f/e1/26f5872b1f64f7e2f055ed1ecdc529f8.jpg.webp', N'TruongYa', 3, NULL)
SET IDENTITY_INSERT [dbo].[Books] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [CatId], [CatName], [CatDescription], [Status]) VALUES (1, N'C1445', N'Comic', N'jldsjklasdjklasdkl', 2)
INSERT [dbo].[Categories] ([Id], [CatId], [CatName], [CatDescription], [Status]) VALUES (2, N'C3474', N'Romantic', N'jldsjklasdjklasdkl', 2)
INSERT [dbo].[Categories] ([Id], [CatId], [CatName], [CatDescription], [Status]) VALUES (3, N'C7894', N'Information Technology ', N'IT Book is the best', 2)
INSERT [dbo].[Categories] ([Id], [CatId], [CatName], [CatDescription], [Status]) VALUES (9, N'C3143', N'Hda', N'hhjhjhjhjhjhjhj', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [CName], [CAddress], [CEmail], [CGender], [CBirthday], [CPhoneNumber], [CPicture]) VALUES (1, N'Dzung', N'Ha Noi', N'ab@gmail.c', N' ', CAST(N'2014-01-15T00:00:00.0000000' AS DateTime2), N'0123456789', N'https://i1-giaitri.vnecdn.net/2022/12/15/avatar-2-1-jpeg-2238-1671050566.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=Gjwi0rqvUSZXSzXx1YrqaA')
INSERT [dbo].[Customers] ([Id], [CName], [CAddress], [CEmail], [CGender], [CBirthday], [CPhoneNumber], [CPicture]) VALUES (8, N'Truong', N'Ho Chi Minh', N'ap@gmail.com', N' ', CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), N'9876543210', N'https://i1-giaitri.vnecdn.net/2022/12/15/avatar-2-1-jpeg-2238-1671050566.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=Gjwi0rqvUSZXSzXx1YrqaA')
INSERT [dbo].[Customers] ([Id], [CName], [CAddress], [CEmail], [CGender], [CBirthday], [CPhoneNumber], [CPicture]) VALUES (9, N'Dat', N'Da Nang', N'lin2010@gmail.com', N' ', CAST(N'2022-12-02T00:00:00.0000000' AS DateTime2), N'0147258369', N'https://i.9mobi.vn/cf/Images/tt/2021/8/20/anh-avatar-dep-37.jpg')
INSERT [dbo].[Customers] ([Id], [CName], [CAddress], [CEmail], [CGender], [CBirthday], [CPhoneNumber], [CPicture]) VALUES (12, N'Truong1', N'Da Nang', N'eq2@gmail', N' ', CAST(N'2022-12-14T00:00:00.0000000' AS DateTime2), N'147258369', N'https://i1-giaitri.vnecdn.net/2022/12/15/avatar-2-1-jpeg-2238-1671050566.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=Gjwi0rqvUSZXSzXx1YrqaA')
INSERT [dbo].[Customers] ([Id], [CName], [CAddress], [CEmail], [CGender], [CBirthday], [CPhoneNumber], [CPicture]) VALUES (13, N'Dzung1', N'A2 vinhome gardenia, Mỹ đình 2, Hà Nội', N'dat@gmail.com', N'M', CAST(N'2022-12-13T00:00:00.0000000' AS DateTime2), N'0795336366', N'https://i.9mobi.vn/cf/Images/tt/2021/8/20/anh-avatar-dep-37.jpg')
INSERT [dbo].[Customers] ([Id], [CName], [CAddress], [CEmail], [CGender], [CBirthday], [CPhoneNumber], [CPicture]) VALUES (14, N'Truong', N'A2 vinhome gardenia, Mỹ đình 2, Hà Nội', N'dat@gmail.com', N' ', CAST(N'2022-11-30T00:00:00.0000000' AS DateTime2), N'0795336555', N'https://i.9mobi.vn/cf/Images/tt/2021/8/20/anh-avatar-dep-37.jpg')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Customer], [Date], [Quantity], [Price], [Image], [BookId]) VALUES (1, N'Dat', CAST(N'2022-12-22T11:13:52.7171583' AS DateTime2), 1, 30, N'https://cdn0.fahasa.com/media/catalog/product/8/9/8935339400189.jpg', 1)
INSERT [dbo].[Orders] ([Id], [Customer], [Date], [Quantity], [Price], [Image], [BookId]) VALUES (2, N'Dat', CAST(N'2022-12-22T11:43:49.3805187' AS DateTime2), 1, 50, N'https://salt.tikicdn.com/cache/750x750/ts/product/1d/9f/f6/48c11954c3829ad8a8211540644230e4.jpg.webp', 4)
INSERT [dbo].[Orders] ([Id], [Customer], [Date], [Quantity], [Price], [Image], [BookId]) VALUES (3, N'Dat', CAST(N'2022-12-22T13:09:02.6855171' AS DateTime2), 1, 32, N'https://salt.tikicdn.com/cache/750x750/media/catalog/producttmp/80/19/44/8f85b0f87f166b93f8b692034cc15f50.jpg.webp', 2)
INSERT [dbo].[Orders] ([Id], [Customer], [Date], [Quantity], [Price], [Image], [BookId]) VALUES (4, N'Dat', CAST(N'2022-12-22T13:38:57.7072293' AS DateTime2), 1, 40, N'https://salt.tikicdn.com/cache/750x750/ts/product/f3/9f/e1/26f5872b1f64f7e2f055ed1ecdc529f8.jpg.webp', 15)
INSERT [dbo].[Orders] ([Id], [Customer], [Date], [Quantity], [Price], [Image], [BookId]) VALUES (5, N'Dat', CAST(N'2022-12-22T13:39:06.6896591' AS DateTime2), 1, 40, N'https://salt.tikicdn.com/cache/750x750/ts/product/f3/9f/e1/26f5872b1f64f7e2f055ed1ecdc529f8.jpg.webp', 15)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Requests] ON 

INSERT [dbo].[Requests] ([Id], [CatId], [CatName], [CatDescription], [Status]) VALUES (9, N'C3143', N'Hda', N'hhjhjhjhjhjhjhj', 1)
SET IDENTITY_INSERT [dbo].[Requests] OFF
GO
SET IDENTITY_INSERT [dbo].[StoreOwners] ON 

INSERT [dbo].[StoreOwners] ([Id], [SName], [SPhone], [SGender], [SPicture]) VALUES (1, N'David', N'9876543210', N'F', N'https://phunugioi.com/wp-content/uploads/2020/01/anh-dai-dien-fa-cho-nguoi-doc-than.jpg')
INSERT [dbo].[StoreOwners] ([Id], [SName], [SPhone], [SGender], [SPicture]) VALUES (2, N'Tran Dzung', N'123456789', N'F', N'https://phunugioi.com/wp-content/uploads/2020/01/anh-dai-dien-y-nghia-dep.jpg')
INSERT [dbo].[StoreOwners] ([Id], [SName], [SPhone], [SGender], [SPicture]) VALUES (3, N'Pass1670', N'7894561230', N'F', N'https://scontent.fhan15-2.fna.fbcdn.net/v/t39.30808-6/182555326_1478955065783102_7586196986371498607_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=KOw75IeM-m0AX_nxcG_&_nc_ht=scontent.fhan15-2.fna&oh=00_AfBYTNentXxYZ7H8H1kuUf4IJCnqfhDImeSJ33HfmdI_-Q&oe=63A8F216')
INSERT [dbo].[StoreOwners] ([Id], [SName], [SPhone], [SGender], [SPicture]) VALUES (5, N'Pa1671', N'1234567890', N'F', N'https://phunugioi.com/wp-content/uploads/2020/01/anh-dai-dien-y-nghia-dep.jpg')
INSERT [dbo].[StoreOwners] ([Id], [SName], [SPhone], [SGender], [SPicture]) VALUES (6, N'Pa1671', N'1234567890', N'F', N'https://phunugioi.com/wp-content/uploads/2020/01/anh-dai-dien-fa-cho-nguoi-doc-than.jpg')
SET IDENTITY_INSERT [dbo].[StoreOwners] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_CategoryId]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Books_CategoryId] ON [dbo].[Books]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Books_RequestId]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Books_RequestId] ON [dbo].[Books]
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_BookId]    Script Date: 12/24/2022 3:30:43 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_BookId] ON [dbo].[Orders]
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Requests_RequestId] FOREIGN KEY([RequestId])
REFERENCES [dbo].[Requests] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Requests_RequestId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Books_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Books] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Books_BookId]
GO
USE [master]
GO
ALTER DATABASE [ahj] SET  READ_WRITE 
GO
