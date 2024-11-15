USE [questionnaire]
GO

CREATE TABLE [dbo].[administrator](
	[administrator_id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NULL,
	[all_access_administrator] [int] NULL,
	[can_add_and_delete_questions_and_assign_names] [int] NULL,
	[can_delete_all_from_subject] [int] NULL,
	[can_remove_class] [int] NULL,
	[creator] [bigint] NULL,
	[timestamp] [bigint] NULL,
	[viewer] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[administrator_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[attached_users_to_classes]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attached_users_to_classes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[user_id] [bigint] NULL,
	[live] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[audio]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[audio](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[table_id] [bigint] NOT NULL,
	[class] [bigint] NOT NULL,
	[name] [varchar](400) NOT NULL,
	[fname] [varchar](800) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[classes]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classes](
	[class_id] [bigint] IDENTITY(1,1) NOT NULL,
	[description_of_class] [varchar](8000) NULL,
	[class_name] [varchar](800) NULL,
	[live] [int] NULL,
	[user_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[images]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[images](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[table_id] [bigint] NOT NULL,
	[class] [bigint] NOT NULL,
	[name] [varchar](400) NOT NULL,
	[fname] [varchar](800) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[library]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[library](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[file_location] [varchar](800) NOT NULL,
	[authors] [varchar](1000) NULL,
	[title] [varchar](2000) NULL,
	[description] [text] NULL,
	[class_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[library_keywords]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[library_keywords](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[library_id] [bigint] NOT NULL,
	[keyword1] [varchar](200) NULL,
	[keyword2] [varchar](200) NULL,
	[keyword3] [varchar](200) NULL,
	[keyword4] [varchar](200) NULL,
	[keyword5] [varchar](200) NULL,
	[keyword6] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_ids]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_ids](
	[question_id] [bigint] IDENTITY(1,1) NOT NULL,
	[table_id] [int] NULL,
	[description] [varchar](8000) NULL,
	[class_id] [bigint] NULL,
	[question_number] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information1]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information1](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information10]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information10](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information11]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information11](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information12]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information12](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information13]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information13](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information14]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information14](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information15]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information15](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information16]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information16](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information17]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information17](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information18]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information18](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information19]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information19](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information2]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information2](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information20]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information20](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information21]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information21](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information22]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information22](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information23]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information23](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information24]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information24](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information25]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information25](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information26]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information26](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information27]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information27](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information28]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information28](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information29]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information29](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information3]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information3](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information30]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information30](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information4]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information4](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information5]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information5](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information6]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information6](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information7]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information7](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information8]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information8](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question_information9]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question_information9](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[class_id] [bigint] NULL,
	[question_id] [int] NULL,
	[question] [text] NULL,
	[pa1] [varchar](8000) NULL,
	[pa2] [varchar](8000) NULL,
	[pa3] [varchar](8000) NULL,
	[pa4] [varchar](8000) NULL,
	[pa5] [varchar](8000) NULL,
	[pa6] [varchar](8000) NULL,
	[pa7] [varchar](8000) NULL,
	[pa8] [varchar](8000) NULL,
	[answ1] [varchar](8000) NULL,
	[answ2] [varchar](8000) NULL,
	[answ3] [varchar](8000) NULL,
	[answ4] [varchar](8000) NULL,
	[answ5] [varchar](8000) NULL,
	[answ6] [varchar](8000) NULL,
	[answ7] [varchar](8000) NULL,
	[answ8] [varchar](8000) NULL,
	[correct] [varchar](5) NULL,
	[hint1] [varchar](8000) NULL,
	[hint2] [varchar](8000) NULL,
	[hint3] [varchar](8000) NULL,
	[hint4] [varchar](8000) NULL,
	[hint5] [varchar](8000) NULL,
	[hint6] [varchar](8000) NULL,
	[hint7] [varchar](8000) NULL,
	[hint8] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[site_settings]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[profile_name] [varchar](200) NOT NULL,
	[soibip] [int] NOT NULL,
	[solipip] [int] NOT NULL,
	[soripip] [int] NOT NULL,
	[pombw] [int] NOT NULL,
	[polsw] [int] NOT NULL,
	[porsw] [int] NOT NULL,
	[hobbip] [int] NOT NULL,
	[dfhb] [tinyint] NOT NULL,
	[efhb] [tinyint] NOT NULL,
	[dls] [tinyint] NOT NULL,
	[els] [tinyint] NOT NULL,
	[ers] [tinyint] NOT NULL,
	[drs] [tinyint] NOT NULL,
	[ecb] [tinyint] NOT NULL,
	[dcb] [tinyint] NOT NULL,
	[embpb] [tinyint] NOT NULL,
	[dmbpb] [tinyint] NOT NULL,
	[emapb] [tinyint] NOT NULL,
	[dmapb] [tinyint] NOT NULL,
	[enableBackgroundPicture] [tinyint] NOT NULL,
	[disableBackgroundPicture] [tinyint] NOT NULL,
	[cotisp] [varchar](16) NOT NULL,
	[rSideColour] [varchar](16) NOT NULL,
	[mbc] [varchar](16) NOT NULL,
	[lBarc] [varchar](16) NOT NULL,
	[tc] [varchar](16) NOT NULL,
	[coib] [varchar](16) NOT NULL,
	[cotiib] [varchar](16) NOT NULL,
	[cospb] [varchar](16) NOT NULL,
	[bc] [varchar](16) NOT NULL,
	[cotiqp] [varchar](16) NOT NULL,
	[coqaab] [varchar](16) NOT NULL,
	[cotiqaab] [varchar](16) NOT NULL,
	[coqb] [varchar](16) NOT NULL,
	[qbc] [varchar](16) NOT NULL,
	[siteH] [varchar](800) NOT NULL,
	[mabp] [varchar](800) NOT NULL,
	[cbp] [varchar](800) NOT NULL,
	[mbp] [varchar](800) NOT NULL,
	[bposa] [varchar](800) NOT NULL,
	[bpota] [varchar](800) NOT NULL,
	[tWritting] [varchar](17) NULL,
	[writting] [varchar](17) NULL,
	[soqipip] [int] NULL,
	[disableMovingBars] [int] NULL,
	[enableMovingBars] [int] NULL,
	[mboc] [varchar](18) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject_files]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject_files](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[video] [int] NULL,
	[audio] [int] NULL,
	[image] [int] NULL,
	[alt_text] [varchar](8000) NULL,
	[file_name] [varchar](800) NULL,
	[class_id] [int] NULL,
	[subject] [int] NULL,
	[user_id] [bigint] NULL,
	[float_num] [float] NULL,
	[numeral] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject_results]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject_results](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NULL,
	[class] [int] NULL,
	[subject] [int] NULL,
	[string] [text] NULL,
	[max_time] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tables]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tables](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[table_id] [bigint] NULL,
	[subject_information] [varchar](8000) NULL,
	[number_of_questions] [int] NULL,
	[class_id] [bigint] NULL,
	[number_of_removal] [int] NULL,
	[link1] [varchar](2000) NULL,
	[link2] [varchar](2000) NULL,
	[link3] [varchar](2000) NULL,
	[link4] [varchar](2000) NULL,
	[link5] [varchar](2000) NULL,
	[link6] [varchar](2000) NULL,
	[link7] [varchar](2000) NULL,
	[link8] [varchar](2000) NULL,
	[link9] [varchar](2000) NULL,
	[link10] [varchar](2000) NULL,
	[link_description1] [varchar](4000) NULL,
	[link_description2] [varchar](4000) NULL,
	[link_description3] [varchar](4000) NULL,
	[link_description4] [varchar](4000) NULL,
	[link_description5] [varchar](4000) NULL,
	[link_description6] [varchar](4000) NULL,
	[link_description7] [varchar](4000) NULL,
	[link_description8] [varchar](4000) NULL,
	[link_description9] [varchar](4000) NULL,
	[link_description10] [varchar](4000) NULL,
	[live] [int] NULL,
	[introduction] [text] NULL,
	[version] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[terms]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[terms](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[terms] [text] NULL,
	[class_id] [bigint] NULL,
	[main_site] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[token]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[token](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[token] [varchar](2000) NULL,
	[email] [varchar](200) NULL,
	[expires] [bigint] NULL,
	[purpose] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[email] [varchar](200) NULL,
	[pass] [varchar](800) NULL,
	[first_name] [varchar](50) NULL,
	[middle_names] [varchar](102) NULL,
	[last_name] [varchar](50) NULL,
	[phone_number] [varchar](20) NULL,
	[time_stamp] [int] NULL,
	[accepted_terms] [tinyint] NULL,
	[admin] [int] NULL,
	[style] [int] NULL,
	[failed_attempts] [int] NULL,
	[time_stamp_created] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_results]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_results](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[string] [varchar](8000) NOT NULL,
	[score] [int] NOT NULL,
	[class] [int] NOT NULL,
	[subject] [int] NOT NULL,
	[realtime] [int] NULL,
	[timestamp] [float] NULL,
	[time_taken] [varchar](200) NULL,
	[finished] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[video]    Script Date: 6/11/2024 10:51:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[video](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[table_id] [bigint] NOT NULL,
	[class] [bigint] NOT NULL,
	[name] [varchar](400) NOT NULL,
	[fname] [varchar](800) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [admin]
GO
ALTER TABLE [dbo].[users_results] ADD  DEFAULT ((0)) FOR [finished]
GO
USE [master]
GO
ALTER DATABASE [questionnaire] SET  READ_WRITE 
GO
