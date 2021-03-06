USE [TravelBlog]
GO
/****** Object:  Table [dbo].[Experiences]    Script Date: 4/19/2017 5:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experiences](
	[ExperienceId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Story] [nvarchar](255) NOT NULL,
	[LocationId] [int] NOT NULL,
 CONSTRAINT [PK_Experiences] PRIMARY KEY CLUSTERED 
(
	[ExperienceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExperiencesPeople]    Script Date: 4/19/2017 5:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExperiencesPeople](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExperienceId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
 CONSTRAINT [PK_ExperiencesPeople] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 4/19/2017 5:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](255) NOT NULL,
	[Country] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocationsPeople]    Script Date: 4/19/2017 5:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationsPeople](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
 CONSTRAINT [PK_LocationsPeople] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[People]    Script Date: 4/19/2017 5:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Character] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_People] PRIMARY KEY CLUSTERED 
(
	[PersonId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Experiences] ON 

INSERT [dbo].[Experiences] ([ExperienceId], [Title], [Story], [LocationId]) VALUES (2, N'OldBoy', N'Castle Movie', 1)
INSERT [dbo].[Experiences] ([ExperienceId], [Title], [Story], [LocationId]) VALUES (8, N'Boxer Dive', N'Diving in Olympic Pool', 1)
SET IDENTITY_INSERT [dbo].[Experiences] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [City], [Country]) VALUES (1, N'Barcelona', N'Spain')
INSERT [dbo].[Locations] ([LocationId], [City], [Country]) VALUES (6, N'Manila', N'Philippines')
INSERT [dbo].[Locations] ([LocationId], [City], [Country]) VALUES (8, N'London', N'England')
INSERT [dbo].[Locations] ([LocationId], [City], [Country]) VALUES (9, N'Sibenik', N'Croatia')
SET IDENTITY_INSERT [dbo].[Locations] OFF
ALTER TABLE [dbo].[Experiences]  WITH CHECK ADD  CONSTRAINT [FK_Experiences_Locations1] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Experiences] CHECK CONSTRAINT [FK_Experiences_Locations1]
GO
