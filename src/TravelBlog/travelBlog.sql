USE [TravelBlog]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4/19/2017 2:34:56 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExperiencePeople]    Script Date: 4/19/2017 2:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExperiencePeople](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ExperienceId] [int] NOT NULL,
	[PeopleId] [int] NOT NULL,
 CONSTRAINT [PK_ExperiencePeople] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Experiences]    Script Date: 4/19/2017 2:34:56 PM ******/
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
/****** Object:  Table [dbo].[LocationPeople]    Script Date: 4/19/2017 2:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationPeople](
	[LocationId] [int] NOT NULL,
	[PropleId] [int] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_LocationPeople] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Locations]    Script Date: 4/19/2017 2:34:56 PM ******/
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
/****** Object:  Table [dbo].[peoples]    Script Date: 4/19/2017 2:34:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[peoples](
	[PeopleId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Character] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_peoples] PRIMARY KEY CLUSTERED 
(
	[PeopleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ExperiencePeople] ON 

INSERT [dbo].[ExperiencePeople] ([Id], [ExperienceId], [PeopleId]) VALUES (1, 1, 1)
INSERT [dbo].[ExperiencePeople] ([Id], [ExperienceId], [PeopleId]) VALUES (2, 2, 1)
INSERT [dbo].[ExperiencePeople] ([Id], [ExperienceId], [PeopleId]) VALUES (3, 3, 3)
INSERT [dbo].[ExperiencePeople] ([Id], [ExperienceId], [PeopleId]) VALUES (4, 4, 1)
INSERT [dbo].[ExperiencePeople] ([Id], [ExperienceId], [PeopleId]) VALUES (5, 4, 2)
INSERT [dbo].[ExperiencePeople] ([Id], [ExperienceId], [PeopleId]) VALUES (6, 5, 3)
SET IDENTITY_INSERT [dbo].[ExperiencePeople] OFF
SET IDENTITY_INSERT [dbo].[Experiences] ON 

INSERT [dbo].[Experiences] ([ExperienceId], [Title], [Story], [LocationId]) VALUES (1, N'Ouch', N'Olympic High Dive', 1)
INSERT [dbo].[Experiences] ([ExperienceId], [Title], [Story], [LocationId]) VALUES (2, N'Madness Dive', N'Played soccer in Hyde Park', 2)
INSERT [dbo].[Experiences] ([ExperienceId], [Title], [Story], [LocationId]) VALUES (3, N'Hi Mr. Octopus', N'Diving and chilled with an octopus', 3)
INSERT [dbo].[Experiences] ([ExperienceId], [Title], [Story], [LocationId]) VALUES (4, N'Old Boy', N'Castle Theater', 1)
INSERT [dbo].[Experiences] ([ExperienceId], [Title], [Story], [LocationId]) VALUES (5, N'Fig Tree', N'The best fruit on the way to the water.', 3)
SET IDENTITY_INSERT [dbo].[Experiences] OFF
SET IDENTITY_INSERT [dbo].[LocationPeople] ON 

INSERT [dbo].[LocationPeople] ([LocationId], [PropleId], [Id]) VALUES (1, 1, 1)
INSERT [dbo].[LocationPeople] ([LocationId], [PropleId], [Id]) VALUES (1, 2, 2)
INSERT [dbo].[LocationPeople] ([LocationId], [PropleId], [Id]) VALUES (2, 1, 3)
INSERT [dbo].[LocationPeople] ([LocationId], [PropleId], [Id]) VALUES (2, 4, 4)
INSERT [dbo].[LocationPeople] ([LocationId], [PropleId], [Id]) VALUES (3, 3, 5)
INSERT [dbo].[LocationPeople] ([LocationId], [PropleId], [Id]) VALUES (4, 2, 6)
SET IDENTITY_INSERT [dbo].[LocationPeople] OFF
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([LocationId], [City], [Country]) VALUES (1, N'Barcelona', N'Spain')
INSERT [dbo].[Locations] ([LocationId], [City], [Country]) VALUES (2, N'London', N'England')
INSERT [dbo].[Locations] ([LocationId], [City], [Country]) VALUES (3, N'Sibenik', N'Croatia')
INSERT [dbo].[Locations] ([LocationId], [City], [Country]) VALUES (4, N'Manila', N'Philippines')
SET IDENTITY_INSERT [dbo].[Locations] OFF
SET IDENTITY_INSERT [dbo].[peoples] ON 

INSERT [dbo].[peoples] ([PeopleId], [Name], [Character]) VALUES (1, N'Matt', N'Chill dude trying to Party')
INSERT [dbo].[peoples] ([PeopleId], [Name], [Character]) VALUES (2, N'Byron', N'Trying to be funny dude who also wants to party and fall in love.')
INSERT [dbo].[peoples] ([PeopleId], [Name], [Character]) VALUES (3, N'Drazen', N'Experiencer dude who wants to be consummed by experiences.')
INSERT [dbo].[peoples] ([PeopleId], [Name], [Character]) VALUES (4, N'Arjun', N'Dude that has a very hard time to have fun.')
SET IDENTITY_INSERT [dbo].[peoples] OFF
ALTER TABLE [dbo].[ExperiencePeople]  WITH CHECK ADD  CONSTRAINT [FK_ExperiencePeople_Experiences] FOREIGN KEY([ExperienceId])
REFERENCES [dbo].[Experiences] ([ExperienceId])
GO
ALTER TABLE [dbo].[ExperiencePeople] CHECK CONSTRAINT [FK_ExperiencePeople_Experiences]
GO
ALTER TABLE [dbo].[ExperiencePeople]  WITH CHECK ADD  CONSTRAINT [FK_ExperiencePeople_Peoples] FOREIGN KEY([PeopleId])
REFERENCES [dbo].[peoples] ([PeopleId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ExperiencePeople] CHECK CONSTRAINT [FK_ExperiencePeople_Peoples]
GO
ALTER TABLE [dbo].[Experiences]  WITH CHECK ADD  CONSTRAINT [FK_Experiences_Locations] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Experiences] CHECK CONSTRAINT [FK_Experiences_Locations]
GO
ALTER TABLE [dbo].[LocationPeople]  WITH CHECK ADD  CONSTRAINT [FK_LocationPeople_Locations] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Locations] ([LocationId])
GO
ALTER TABLE [dbo].[LocationPeople] CHECK CONSTRAINT [FK_LocationPeople_Locations]
GO
ALTER TABLE [dbo].[LocationPeople]  WITH CHECK ADD  CONSTRAINT [FK_LocationPeople_Peoples] FOREIGN KEY([PropleId])
REFERENCES [dbo].[peoples] ([PeopleId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LocationPeople] CHECK CONSTRAINT [FK_LocationPeople_Peoples]
GO
