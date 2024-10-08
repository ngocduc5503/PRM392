
USE [ProjectPRM392]
GO
/****** Object:  Table [dbo].[account]    Script Date: 9/22/2024 11:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account](
	[userID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NULL,
	[userPassword] [nvarchar](30) NULL,
	[roleID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 9/22/2024 11:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[categoryID] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [nvarchar](100) NULL,
	[parentCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 9/22/2024 11:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[customerID] [int] IDENTITY(1,1) NOT NULL,
	[userID] [int] NULL,
	[customerName] [nvarchar](50) NULL,
	[customerEmail] [nvarchar](30) NULL,
	[customerPhone] [nvarchar](20) NULL,
	[customerAddress] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[importDetail]    Script Date: 9/22/2024 11:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[importDetail](
	[importDetailID] [int] IDENTITY(1,1) NOT NULL,
	[importID] [int] NULL,
	[productID] [int] NULL,
	[quantity] [int] NULL,
	[priceImport] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[importDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[importTransaction]    Script Date: 9/22/2024 11:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[importTransaction](
	[importID] [int] IDENTITY(1,1) NOT NULL,
	[supplierID] [int] NULL,
	[totalPrice] [decimal](10, 3) NULL,
	[importDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[importID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderDetail]    Script Date: 9/22/2024 11:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderDetail](
	[orderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[saleID] [int] NULL,
	[productID] [int] NULL,
	[quantity] [int] NULL,
	[priceSale] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 9/22/2024 11:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[productID] [int] IDENTITY(1,1) NOT NULL,
	[categoryID] [int] NULL,
	[productName] [nvarchar](100) NULL,
	[productDescription] [nvarchar](max) NULL,
	[originalPrice] [decimal](10, 3) NULL,
	[supplierID] [int] NULL,
	[productImg] [nvarchar](max) NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[saleTransaction]    Script Date: 9/22/2024 11:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saleTransaction](
	[saleID] [int] IDENTITY(1,1) NOT NULL,
	[customerID] [int] NULL,
	[totalPrice] [decimal](10, 3) NULL,
	[saleDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[saleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[supplier]    Script Date: 9/22/2024 11:01:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[supplier](
	[supplierID] [int] IDENTITY(1,1) NOT NULL,
	[supplierName] [nvarchar](50) NULL,
	[supplierEmail] [nvarchar](30) NULL,
	[supplierPhone] [nvarchar](20) NULL,
	[supplierAddress] [nvarchar](100) NULL,
	[userID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[supplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[category]  WITH CHECK ADD FOREIGN KEY([parentCategoryID])
REFERENCES [dbo].[category] ([categoryID])
GO
ALTER TABLE [dbo].[customer]  WITH CHECK ADD FOREIGN KEY([userID])
REFERENCES [dbo].[account] ([userID])
GO
ALTER TABLE [dbo].[importDetail]  WITH CHECK ADD FOREIGN KEY([importID])
REFERENCES [dbo].[importTransaction] ([importID])
GO
ALTER TABLE [dbo].[importDetail]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[product] ([productID])
GO
ALTER TABLE [dbo].[importTransaction]  WITH CHECK ADD FOREIGN KEY([supplierID])
REFERENCES [dbo].[supplier] ([supplierID])
GO
ALTER TABLE [dbo].[orderDetail]  WITH CHECK ADD FOREIGN KEY([productID])
REFERENCES [dbo].[product] ([productID])
GO
ALTER TABLE [dbo].[orderDetail]  WITH CHECK ADD FOREIGN KEY([saleID])
REFERENCES [dbo].[saleTransaction] ([saleID])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([categoryID])
REFERENCES [dbo].[category] ([categoryID])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [fk_supplierID] FOREIGN KEY([supplierID])
REFERENCES [dbo].[supplier] ([supplierID])
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [fk_supplierID]
GO
ALTER TABLE [dbo].[saleTransaction]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[customer] ([customerID])
GO
ALTER TABLE [dbo].[supplier]  WITH CHECK ADD  CONSTRAINT [fk_usersupID] FOREIGN KEY([userID])
REFERENCES [dbo].[account] ([userID])
GO
ALTER TABLE [dbo].[supplier] CHECK CONSTRAINT [fk_usersupID]
GO
