# 23.-SQL-learn-with-MySQL-SQL-implementation- <img src="https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https://bucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com/public/images/85be1fac-45e8-4f67-88d0-cc3d042fbd01_935x935.png" width="50" height="50"> ![My Skills](https://go-skill-icons.vercel.app/api/icons?i=mysql)

I had a few school projects that required me to deal with databases, including an FAQ forum and a Telegram Chatbot to assist professors in teaching novice programmers.

I also have been wanting to learn SQL (or any of its implementations) for a while as the database aspect in Full-stack website developments. 

Initially, I wanted to learn SQLite as the SQL implementation, but I quickly learnt that it is serverless-based, which is not a typical SQL implementation, so instead I decided to learn MySQL as the SQL implementation.

Hence, the creation of this Github repository to document my learning journey of SQL.

Apparently while SQL is a programming language, it is different from other well known programming languages by being a fourth-generation programming language (4GL), while other well known programming languages (Python, Java, JavaScript, C++, etc.) are third-generation programming languages (3GL).

Apart from the '[Unity C# Syntax learn code archives](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/C%23%20learn%20code%20archives)' folder's sources where I learnt Unity C# syntax, I also made reference from this popular 'The Unity Tutorial For Complete Beginners' Youtube tutorial video (link: https://www.youtube.com/watch?v=XtQMytORBmM&t=1s (Game Maker's Toolkit)) to get a general grasp on how the Unity editor/software looks like and work, which helped tremondously in my understanding of the Unity editor/software.

<br>

## Table of Contents:
Here is a directory to the explanations of what each folder contains in this SQL learn with MySQL (SQL implementation) learning journey repository:
1. [SQL learn with My SQL (SQL implementation) code archives)](#sqlwithmysqlcodearchives)  
   + ['1. About_these_MySQL_(SQL_implentation)_tutorials.txt' text file](#mysqlabouttutorials)
   + ['2. How_to_set_up_a_Relational_Database_in_an_empty_MySQL_(SQL implementation)_server_and_how_to_run_MySQL_(SQL_implementation)_queries_in_VScode.txt' text file](#mysqlhowsetuprdbandruninvscode)
   + [3. MySQL (SQL implementation) basic syntax](#mysqlbasics)
   + [4. MySQL (SQL implementation) modifying Relational Databases](#mysqlmodifyingrdb)
   + [5. MySQL (SQL implementation) integrated with Python (as backend) using PyMySQL (Python library)](#mysqlwithpython)
   + ['MySQL_(SQL_implementation)_query_that_creates_the_movies_relational_database_in_a_MySQL_(SQL_implementation)_server.sql' SQL file](#mysqlmoviesrdb)
   + ['movies_relational_database_visual_in_Microsoft_Excel.xlsx' Microsoft Excel file](#mysqlmoviesrdbexcel)
2. ['What_is_SQL_and_what_are_databases_and_what_is_MySQL.txt' text file](#whatissqlanddatabasesandmysql)  
3. ['Setting_up_MySQL_(SQL_implementation)_in_VScode.txt' text file](#setupmysqlinvscode)  

<br>

## [1. SQL learn with My SQL (SQL implementation) code archives](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/3.%20MySQL%20(SQL%20implementation)%20basic%20syntax) <a name = "sqlwithmysqlcodearchives"></a> 

This is the C# environment that you need to set up in VS code in order to run your C# files in VS code. In this C# environment in VS code folder, you can modify the 'run_code_here.cs' C# file to whatever C# code you want to run in VS code. Don't modify anything else in this C# environment in VS code folder as it might introduce bugs to your C# environment in VS code.

This is Youtube video where I learnt how to set up this C# environment in VS code, and how to use it to run C# code in VS code: https://www.youtube.com/watch?v=CO4BGZOuUkM (Tech Decode Tutorials)

I'm not sure if this C# environment works for other IDE/compilers... I have only ever used it for VS code and it works for VS code.

*Source(s):*  
+ https://www.youtube.com/watch?v=CO4BGZOuUkM (Tech Decode Tutorials) (Youtube video labelled 'How to Run C# in Visual Studio Code on Windows 10 2022' by Tech Decode Tutorials) for the setting up c# in vscode section stuffs   

<br>

## [1. SQL learn with My SQL (SQL implementation) code archives](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives) <a name = "sqlwithmysqlcodearchives"></a> 

This folder contains all the C# files during my C# programming language learning journey, segregated into 4 folders, '[C# basics](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/C%23%20learn%20code%20archives/1.%20C%23%20basics)', '[C# built-in data structures](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/C%23%20learn%20code%20archives/2.%20C%23%20built-in%20data%20structures)', '[C# OOP](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/C%23%20learn%20code%20archives/3.%20C%23%20OOP)' and '[C# short projects](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/C%23%20learn%20code%20archives/4.%20C%23%20short%20projects)', organised based on the  programming concept of each C# file. Most of the information in the C# files in this folder is taken from this 3 hour long Youtube video: https://www.youtube.com/watch?v=GhQdlIFylQ8&t=12271s (freeCodeCamp), while I split its lessons myself to the individual folders.

For the information in the C# files in the [C# basics](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/C%23%20learn%20code%20archives/1.%20C%23%20basics) folder, '[920. What_are_namespaces_in_C#_and_namespace_statements_and_using_statements_and_their_applications_in_the_C#_programmiing_language.txt](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/blob/main/C%23%20learn%20code%20archives/1.%20C%23%20basics/920.%20What_are_namespaces_in_C%23_and_namespace_statements_and_using_statements_and_their_applications_in_the_C%23_programmiing_language.txt)', '[921. namespace_statements.cs](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/blob/main/C%23%20learn%20code%20archives%2F1.%20C%23%20basics%2F921.%20namespace_statements.cs)', and '[922. using_statements.cs](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/blob/main/C%23%20learn%20code%20archives%2F1.%20C%23%20basics%2F922.%20using_statements.cs)', regarding about Namespaces in the C# programming language, 'namespace' and 'using' statements as well as their applications in the structure of the C# programming language, their sources are taken separately from https://www.youtube.com/watch?v=1BYEC1ZENSg&t=1s (Matt Noone) (this Youtube short provides a very concise and clear summary of what are Namespaces in the C# programming language, 'namespace' and 'using' statements as well as their applications in the structure of the C# programming language) and https://stackoverflow.com/questions/11427223/what-is-the-difference-between-a-class-library-and-a-namespace (Stack Overflow). I had to source the information from other sources due to the higher complexity of these concepts, that they aren't explained in the 3 hour long Youtube video by freeCodeCamp, and that they aren't present in Python programming language as well.

*How to use the C# files in this folder?*  
The C# files in this folder need to be used along with the '[C# environment in VS code (to run C# code)](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/C%23%20environment%20in%20VS%20code%20(to%20run%20C%23%20code))' folder in order to run them in VS code.

<br> 

**['1. About_these_MySQL_(SQL_implentation)_tutorials.txt' text file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/1.%20About_these_MySQL_(SQL_implentation)_tutorials.txt) <a name = "mysqlabouttutorials"></a>**  
This folder contains all the C# files that deals with the basic syntax and structure in the C# programming language.

**['2. How_to_set_up_a_Relational_Database_in_an_empty_MySQL_(SQL implementation)_server_and_how_to_run_MySQL_(SQL_implementation)_queries_in_VScode.txt' text file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/2.%20How_to_set_up_a_Relational_Database_in_an_empty_MySQL_(SQL%20implementation)_server_and_how_to_run_MySQL_(SQL_implementation)_queries_in_VScode.txt) <a name = "mysqlhowsetuprdbandruninvscode"></a>**  
This folder contains all the C# files that deals with the built-in data structures in the C# programming language.

**[3. MySQL (SQL implementation) basic syntax](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/3.%20MySQL%20(SQL%20implementation)%20basic%20syntax) <a name = "mysqlbasics"></a>**  
This folder contains all the C# files that deals with Object-Oriented Programming (OOP) concept in the C# programming language.

**[4. MySQL (SQL implementation) modifying Relational Databases](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/4.%20MySQL%20(SQL%20implementation)%20modifying%20Relational%20Databases) <a name = "mysqlmodifyingrdb"></a>**  
This folder contains all the C# files that deals with some guided mini-projects, from the same [freeCodeCamp Youtube video](https://www.youtube.com/watch?v=GhQdlIFylQ8&t=12271s), including, creating a calculator, a mad-lib game, and a guessing game, in the C# programming language.

**[5. MySQL (SQL implementation) integrated with Python (as backend) using PyMySQL (Python library)](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/5.%20MySQL%20(SQL%20implementation)%20integrated%20with%20Python%20(as%20backend)%20using%20PyMySQL%20(Python%20library)) <a name = "mysqlmoviesrdbexcel"></a>**  
This file contains information from the Youtube video on how to set up a C# environment in VS code, and how to use it to run C# code in VS code. (link: https://www.youtube.com/watch?v=CO4BGZOuUkM (Tech Decode Tutorials))

This file is in this folder, rather than the previous folder, '[C# environment in VS code (to run C# code)](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/C%23%20environment%20in%20VS%20code%20(to%20run%20C%23%20code))' because it might introduce bugs to the '[C# environment in VS code (to run C# code)](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/C%23%20environment%20in%20VS%20code%20(to%20run%20C%23%20code))' folder if this file is added to it.

<br>

*Source(s):*  
+ https://www.youtube.com/watch?v=GhQdlIFylQ8&t=12271s (freeCodeCamp) (Youtube video labelled 'C# Tutorial - Full Course for Beginners' by freeCodeCamp)  
+ https://www.youtube.com/watch?v=1BYEC1ZENSg&t=1s (Matt Noone) (Youtube short labelled 'How to use namespaces in C#?' by Matt Noone)
+ https://stackoverflow.com/questions/11427223/what-is-the-difference-between-a-class-library-and-a-namespace (Stack Overflow) (Stack Overflow discussion on 'What is the difference between a class library and a namespace?')  
+ https://www.youtube.com/watch?v=CO4BGZOuUkM (Tech Decode Tutorials) (Youtube video labelled 'How to Run C# in Visual Studio Code on Windows 10 2022' by Tech Decode Tutorials) for the setting up c# in vscode section stuffs  
  
<br>

## [2. 'What_is_SQL_and_what_are_databases_and_what_is_MySQL.txt' text file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/What_is_SQL_and_what_are_databases_and_what_is_MySQL.txt) <a name = "whatissqlanddatabasesandmysql"></a> 
This is the Unity C# syntax learn project folder, which you can treat as the 'environment' to run the Unity C# scripts on the Unity editor/software, since these Unity C# scripts cannot be run on other IDEs, such as VS code, only in the Unity editor/software's terminal as a Unity project.

I did not refer to any sources in order to create this folder since the Unity editor/software automatically generates a Unity project folder like this one whenever you create a Unity game, which stores all the information of your Unity game, and allows you to run/edit your Unity game and the C# scripts inside it in the Unity editor/software when you import this Unity project folder into the Unity editor/software.

Refer to my seperate repository, [19.-2D-Unity-Game](https://github.com/WindJammer6/19.-2D-Unity-Game) to see what does each seperate folder within this '[Unity C# syntax learn project folder](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/Unity%20C%23%20Syntax%20learn%20Unity%20project)' does. And also, how to download this '[Unity C# syntax learn project folder](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/Unity%20C%23%20Syntax%20learn%20Unity%20project)' 'Unity project' (or any other Unity projects) from Github, as well as using it in the Unity editor/software's terminal, in the section *'How to download and use this Unity source code on Github in your Unity editor/software?'* in *'Technicalities between Unity and Github'* of the repository's 'README.md' file.

*Source(s):*  
nil

<br>

## [3. 'Setting_up_MySQL_(SQL_implementation)_in_VScode.txt' text file) <a name = "setupmysqlinvscode"></a>
This folder contains all the C# files during my Unity C# syntax learning journey, organised roughly according to the order of the Unity's Youtube playlist's videos on Unity C# syntax. (link: https://www.youtube.com/playlist?list=PLX2vGYjWbI0S9-X2Q021GUtolTqbUBB9B (Unity)) Most of the information in this folder is taken from this Unity Youtube playlist: https://www.youtube.com/playlist?list=PLX2vGYjWbI0S9-X2Q021GUtolTqbUBB9B (Unity), with a lot of assistance from [ChatGPT](https://chat.openai.com/) and Googling due to how poor Unity's Youtube videos tutorials on Unity C# syntax are at teaching haiz... I did skip some of the videos from the Unity Youtube playlist as well, did not follow all of them exactly.

*How to use the C# files in this folder?*  
The C# files in this folder needs to be used along with the '[Unity C# Syntax learn Unity project](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/Unity%20C%23%20Syntax%20learn%20Unity%20project)' folder in order to run them in the Unity editor/software's terminal, since these Unity C# scripts cannot be run on other IDEs, such as VS code. (which these C# files already are added to the [Unity C# Syntax learn Unity project](https://github.com/WindJammer6/16.-Csharp-and-Unity-Learning/tree/main/Unity%20C%23%20Syntax%20learn%20Unity%20project))

*Source(s):*  
+ https://www.youtube.com/playlist?list=PLX2vGYjWbI0S9-X2Q021GUtolTqbUBB9B (Unity) (Youtube playlist labelled 'Beginner-friendly scripting tutorials' by Unity, consisting of various videos teaching the basic C# syntax for Unity) 
+ https://chat.openai.com/ (ChatGPT)  

