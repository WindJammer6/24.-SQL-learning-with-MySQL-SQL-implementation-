# 23.-SQL-learn-with-MySQL-SQL-implementation- <img src="https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https://bucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com/public/images/85be1fac-45e8-4f67-88d0-cc3d042fbd01_935x935.png" width="50" height="50"> ![My Skills](https://go-skill-icons.vercel.app/api/icons?i=mysql)

I had a few school projects that required me to deal with databases, including an FAQ forum and a Telegram Chatbot to assist professors in teaching novice programmers.

I also have been wanting to learn SQL (or any of its implementations) for a while as the database aspect in Full-stack website developments. 

Initially, I wanted to learn SQLite as the SQL implementation, but I quickly learnt that it is serverless-based, which is not a typical SQL implementation, so instead I decided to learn MySQL as the SQL implementation.

Hence, the creation of this Github repository to document my learning journey of SQL.

Apparently while SQL is a programming language, it is different from other well known programming languages by being a fourth-generation programming language (4GL), while other well known programming languages (Python, Java, JavaScript, C++, etc.) are third-generation programming languages (3GL).

Apart from the '[SQL learn with My SQL (SQL implementation) code archives](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives)' folder's sources where I learnt SQL with MySQL (SQL implementation), I also made reference from this popular 'CS50x 2024 - Lecture 7 - SQL' Youtube tutorial video (link: https://www.youtube.com/watch?v=1RCMYG8RUSE&t=2668s (CS50)) to get a general grasp on how SQL, Databases, Database Management Systems (DBMS) and SQL implementations (including MySQL) work, which helped tremondously in my understanding of SQL.

<br>

## Table of Contents:
Here is a directory to the explanations of what each folder contains in this SQL learn with MySQL (SQL implementation) learning journey repository:
1. [SQL learn with My SQL (SQL implementation) code archives)](#sqlwithmysqlcodearchives)  
   + [1. 'About_these_MySQL_(SQL_implentation)_tutorials.txt' text file](#mysqlabouttutorials)
   + [2. MySQL (SQL implementation) basic syntax](#mysqlbasics)
   + [3. MySQL (SQL implementation) modifying Relational Databases](#mysqlmodifyingrdb)
   + [4. MySQL (SQL implementation) integrated with Python (as backend) using PyMySQL (Python library)](#mysqlwithpython)
   + ['MySQL_(SQL_implementation)_query_that_creates_the_movies_relational_database_in_a_MySQL_(SQL_implementation)_server.sql' MySQL (SQL implementation) file](#mysqlmoviesrdb)
   + ['movies_relational_database_visual_in_Microsoft_Excel.xlsx' Microsoft Excel file](#mysqlmoviesrdbexcel)
2. ['What_is_SQL_and_what_are_databases_and_what_is_MySQL.txt' text file](#whatissqlanddatabasesandmysql)  
3. ['Setting_up_MySQL_(SQL_implementation)_in_VScode.txt' text file](#setupmysqlinvscode)
4. ['How_to_set_up_a_Relational_Database_in_an_empty_MySQL_(SQL implementation)_server_and_how_to_run_MySQL_(SQL_implementation)_queries_in_VScode.txt' text file](#howsetupmysqlrdbandruninvscode)

<br>

## [1. SQL learn with My SQL (SQL implementation) code archives](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives) <a name = "sqlwithmysqlcodearchives"></a> 

This folder contains all the MySQL (SQL implementation) files during my SQL programming language with MySQL (SQL implementation) learning journey segregated into 3 folders, '[2. MySQL (SQL implementation) basic syntax](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/2.%20MySQL%20(SQL%20implementation)%20basic%20syntax)', '[3. MySQL (SQL implementation) modifying Relational Databases](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/3.%20MySQL%20(SQL%20implementation)%20modifying%20Relational%20Databases)' and '[4. MySQL (SQL implementation) integrated with Python (as backend) using PyMySQL (Python library)](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/4.%20MySQL%20(SQL%20implementation)%20integrated%20with%20Python%20(as%20backend)%20using%20PyMySQL%20(Python%20library))', organised based on the programming concept of each MySQL (SQL implementation) file. Most of the information from the first and second folders, '[2. MySQL (SQL implementation) basic syntax](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/2.%20MySQL%20(SQL%20implementation)%20basic%20syntax)' and '[3. MySQL (SQL implementation) modifying Relational Databases](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/3.%20MySQL%20(SQL%20implementation)%20modifying%20Relational%20Databases)', is taken from this Youtube playlist: https://www.youtube.com/playlist?list=PL41lfR-6DnOokmJfmYj2hdVMKVGIcF7__ (Quentin Watt Tutorials) and the information from the third folder is taken from these Youtube videos: https://www.youtube.com/watch?v=3vsC05rxZ8c&list=PLzMcBGfZo4-l5kVSNVKGO60V6RkXAVtp-&index=1 (Tech with Tim) and https://www.youtube.com/watch?v=91iNR0eG8kE&list=PLzMcBGfZo4-l5kVSNVKGO60V6RkXAVtp-&index=2 (Tech with Tim). While in all 3 folders I split the respective lessons myself to the individual folders.

This folder also contains 1 text files, ['1. About_these_MySQL_(SQL_implentation)_tutorials.txt' text file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/1.%20About_these_MySQL_(SQL_implentation)_tutorials.txt), 1 MySQL (SQL implementation) file, ['MySQL_(SQL_implementation)_query_that_creates_the_movies_relational_database_in_a_MySQL_(SQL_implementation)_server.sql' SQL file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/MySQL_(SQL_implementation)_query_that_creates_the_movies_relational_database_in_a_MySQL_(SQL_implementation)_server.sql), and 1 Microsoft Excel file, ['movies_relational_database_visual_in_Microsoft_Excel.xlsx' Microsoft Excel file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/movies_relational_database_visual_in_Microsoft_Excel.xlsx).

<br>

However, I did have some deviation for these tutorial folders from their sources:  

For deviation for the first and second tutorial folders from the Youtube playlist by Quentin Watt Tutorials, titled 'MySQL for Beginners':  
- In the Youtube playlist by Quentin Watt Tutorials, titled 'MySQL for Beginners' used MAMP and PHP as the
  IDE, but I used VScode instead (refer to the file 'Setting_up_MySQL_(SQL_implementation)_in_VScode.txt' for how to set 
  up MySQL with VScode).
- In the Youtube playlist by Quentin Watt Tutorials, titled 'MySQL for Beginners' used a pre-made Relational Database by 
  Quentin, but I used a 'moviesdb' Relational Database provided by codebasics in their Youtube video, titled 'SQL Tutorial 
  for Beginners | MySQL Tutorial' (link: https://youtu.be/Rm0xH2Vpfi0?si=QVr3mUdqUGLHN84R)

For deviation for the third tutorial folder from the Youtube videos by Tech with Tim, titled 'Python MySQL Tutorial - Setup & Basic Queries (w/ MySQL Connector)' and 'Python MySQL Tutorial - Creating Tables, Inserting & Selecting':  
- In these Youtube videos by Tech with Tim, titled 'Python MySQL Tutorial - Setup & Basic Queries (w/ MySQL Connector)' and 'Python MySQL Tutorial - Creating Tables, Inserting & Selecting' used 
  the 'mysql.connector' (Python library), but it dosen't work for my computer for some reason so I used the PyMySQL (Python library) instead, which works for my computer and is relatively 
  similar to the 'mysql.connector' (Python library) in functionality and syntax.

*How to use the MySQL (SQL implementation) files in this folder?*  
The MySQL (SQL implementation) files in this folder can only be used after setting up VS code, where instructions can be found from the '[3. 'Setting_up_MySQL_(SQL_implementation)_in_VScode.txt' text file)](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/Setting_up_MySQL_(SQL_implementation)_in_VScode.txt)', setting up the 'moviesdb' MySQL (SQL implementation) Relational Database in a MySQL (SQL implementation) server in the 'MySQL WorkBench' MySQL-specific MySQL (SQL implementation) server management tool/IDE/application, and running these MySQL (SQL implementation) files, where instructions can be found from the '[4. 'How_to_set_up_a_Relational_Database_in_an_empty_MySQL_(SQL implementation)_server_and_how_to_run_MySQL_(SQL_implementation)_queries_in_VScode.txt' text file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/How_to_set_up_a_Relational_Database_in_an_empty_MySQL_(SQL%20implementation)_server_and_how_to_run_MySQL_(SQL_implementation)_queries_in_VScode)'.

<br> 

**[1. 'About_these_MySQL_(SQL_implentation)_tutorials.txt' text file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/1.%20About_these_MySQL_(SQL_implentation)_tutorials.txt) <a name = "mysqlabouttutorials"></a>**  
This file contains information about these MySQL (SQL implementation) files, the sources of the information they are taken from: https://www.youtube.com/playlist?list=PL41lfR-6DnOokmJfmYj2hdVMKVGIcF7__ (Quentin Watt Tutorials), https://www.youtube.com/watch?v=3vsC05rxZ8c&list=PLzMcBGfZo4-l5kVSNVKGO60V6RkXAVtp-&index=1 (Tech with Tim) and 
https://www.youtube.com/watch?v=91iNR0eG8kE&list=PLzMcBGfZo4-l5kVSNVKGO60V6RkXAVtp-&index=2 (Tech with Tim) and the deviations of these MySQL (SQL implementation) files from it (see above in the section 'However, I did have some deviation for these tutorial folders from their sources').

**[2. MySQL (SQL implementation) basic syntax](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/2.%20MySQL%20(SQL%20implementation)%20basic%20syntax) <a name = "mysqlbasics"></a>**  
This folder contains all the MySQL (SQL implementation) files that deals with the basic syntax and structure in the SQL programming language with MySQL (SQL implementation).

**[3. MySQL (SQL implementation) modifying Relational Databases](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/3.%20MySQL%20(SQL%20implementation)%20modifying%20Relational%20Databases) <a name = "mysqlmodifyingrdb"></a>**  
This folder contains all the MySQL (SQL implementation) files that deals with modifying Relational Databases (aka SQL Databases), in the SQL programming language with MySQL (SQL implementation).

**[4. MySQL (SQL implementation) integrated with Python (as backend) using PyMySQL (Python library)](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/tree/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/4.%20MySQL%20(SQL%20implementation)%20integrated%20with%20Python%20(as%20backend)%20using%20PyMySQL%20(Python%20library)) <a name = "mysqlmoviesrdbexcel"></a>**  
This folder contains all the MySQL (SQL implementation) files that deals with the integration of the SQL programming language with MySQL (SQL implementation) to Python (as backend) using the [PyMySQL (Python library)](https://pypi.org/project/PyMySQL/).

**['MySQL_(SQL_implementation)_query_that_creates_the_movies_relational_database_in_a_MySQL_(SQL_implementation)_server.sql' MySQL (SQL implementation) file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/MySQL_(SQL_implementation)_query_that_creates_the_movies_relational_database_in_a_MySQL_(SQL_implementation)_server.sql) <a name = "mysqlmoviesrdb"></a>**
This file contains the MySQL (SQL implementation) file, that when run, creates the 'moviesdb' Relational Database provided by codebasics in their Youtube video, titled 'SQL Tutorial for Beginners | MySQL Tutorial' (link: https://youtu.be/Rm0xH2Vpfi0?si=QVr3mUdqUGLHN84R) in a MySQL (SQL implementation) server in MySQL Workbench, a MySQL-specific MySQL (SQL implementation) server management tool/IDE/application (see the section below '3. 'Setting_up_MySQL_(SQL_implementation)_in_VScode.txt' text file' for more detail on what MySQL Workbench is).

**['movies_relational_database_visual_in_Microsoft_Excel.xlsx' Microsoft Excel file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/SQL%20learn%20with%20My%20SQL%20(SQL%20implementation)%20code%20archives/movies_relational_database_visual_in_Microsoft_Excel.xlsx) <a name = "mysqlmoviesrdbexcel"></a>**
This file contains the Microsoft Excel file, that illustrates/visualises the 'moviesdb' Relational Database provided by codebasics in their Youtube video, titled 'SQL Tutorial for Beginners | MySQL Tutorial' (link: https://youtu.be/Rm0xH2Vpfi0?si=QVr3mUdqUGLHN84R) in a Microsoft Excel.

<br>

*Source(s):*  
+ https://www.youtube.com/playlist?list=PL41lfR-6DnOokmJfmYj2hdVMKVGIcF7__ (Youtube playlist by Quentin Watt Tutorials, titled 'MySQL for Beginners')
+ https://www.youtube.com/watch?v=3vsC05rxZ8c&list=PLzMcBGfZo4-l5kVSNVKGO60V6RkXAVtp-&index=1 (Youtube video by Tech with Tim, titled: 'Python MySQL Tutorial - Setup & Basic Queries (w/ MySQL Connector)')
+ https://www.youtube.com/watch?v=91iNR0eG8kE&list=PLzMcBGfZo4-l5kVSNVKGO60V6RkXAVtp-&index=2 (Youtube video by Tech with Tim, titled: 'Python MySQL Tutorial - Creating Tables, Inserting & Selecting')
  
<br>

## [2. 'What_is_SQL_and_what_are_databases_and_what_is_MySQL.txt' text file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/What_is_SQL_and_what_are_databases_and_what_is_MySQL.txt) <a name = "whatissqlanddatabasesandmysql"></a> 
This is the file that explains a comprehensive background of the SQL programming language, how it is related to Databases, the types of Databases, their respective Database Management Systems (DBMS), and the different types of SQL implementations (including MySQL (SQL implementation), etc.

*Source(s):*  
+ https://www.geeksforgeeks.org/what-is-sql/ (GeekforGeeks) (for what is SQL)
+ https://learnsql.com/blog/what-is-sql-query/ (LearnSQL) (for what is a SQL query)
+ https://www.geeksforgeeks.org/what-is-database/ (GeekforGeeks) (for what is a Database)
+ https://www.geeksforgeeks.org/what-is-database/ (GeekforGeeks) (for the different types of databases)
+ https://www.geeksforgeeks.org/introduction-to-nosql/ (GeekforGeeks) (for the definition of NoSQL Database)
+ https://blog.leanxcale.com/distributed-database-concepts/newsql-databases/ (Leanxcale) (for the definition of NewSQL
Database)
+ https://www.geeksforgeeks.org/what-is-mysql/ (GeekforGeeks) (for what is MySQL (SQL implementation))

<br>

## [3. 'Setting_up_MySQL_(SQL_implementation)_in_VScode.txt' text file)](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/Setting_up_MySQL_(SQL_implementation)_in_VScode.txt) <a name = "setupmysqlinvscode"></a>
This file contains instructions on how to set up MySQL (SQL implementation) with VS code, such as how to download MySQL (SQL implementation) from the MySQL (SQL implementation) official website: https://www.mysql.com/downloads/, create a MySQL (SQL implementation) server in MySQL Workbench, a MySQL-specific MySQL (SQL implementation) server management tool/IDE/application, and establish a connection link between the created MySQL (SQL implementation) server in MySQL Workbench to VS code.

*Source(s):*  
+ https://www.mysql.com/downloads/ (MySQL)
+ https://youtu.be/Rm0xH2Vpfi0?si=QVr3mUdqUGLHN84R (Youtube video by codebasics, titled: 'SQL Tutorial for Beginners | MySQL Tutorial')
+ https://guidingcode.com/use-mysql-with-visual-studio-code/ (GuidingCode) 
+ https://superuser.com/questions/1438960/error-er-supported-auth-mode-client-does-not-support-authentication-protocal-r (superuser discussion on: 'Error: ER_SUPPORTED_AUTH_MODE: Client does not support authentication protocal requested by server consider upgrading MySQL client')

<br>

## [4. 'How_to_set_up_a_Relational_Database_in_an_empty_MySQL_(SQL implementation)_server_and_how_to_run_MySQL_(SQL_implementation)_queries_in_VScode.txt' text file](https://github.com/WindJammer6/23.-SQL-learn-with-MySQL-SQL-implementation-/blob/main/How_to_set_up_a_Relational_Database_in_an_empty_MySQL_(SQL%20implementation)_server_and_how_to_run_MySQL_(SQL_implementation)_queries_in_VScode) <a name = "howsetupmysqlrdbandruninvscode"></a>
This file contains instructions on how to set up the pre-made 'moviesdb' Relational Database provided by codebasics in their Youtube video, titled 'SQL Tutorial for Beginners | MySQL Tutorial' (link: https://youtu.be/Rm0xH2Vpfi0?si=QVr3mUdqUGLHN84R) in a MySQL (SQL implementation) server in MySQL Workbench, a MySQL-specific MySQL (SQL implementation) server management tool/IDE/application, and how to run a MySQL (SQL implementation) file in VS code.

*Source(s):*  
+ https://youtu.be/Rm0xH2Vpfi0?si=QVr3mUdqUGLHN84R (Youtube video by codebasics, titled: 'SQL Tutorial for Beginners | MySQL Tutorial')
+ https://guidingcode.com/use-mysql-with-visual-studio-code/ (Guidingcode)

