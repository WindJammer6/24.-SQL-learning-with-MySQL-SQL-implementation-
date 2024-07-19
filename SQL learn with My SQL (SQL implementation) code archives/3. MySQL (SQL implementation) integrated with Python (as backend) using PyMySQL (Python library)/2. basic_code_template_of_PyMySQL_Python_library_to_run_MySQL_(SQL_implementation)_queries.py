# Basic code template of the PyMySQL Python library to run MySQL (SQL implementation) queries:

# Importing the PyMySQL (Python library)
import pymysql


# Creating a 'Connection' class instance/object using the '.connect()' PyMySQL (Python library) 
# function, which represents an established a connection to the selected MySQL (SQL implementation) 
# server, and connecting to a specific Relational Database (aka SQL Database) within the selected 
# MySQL (SQL implementation) server

# The 4 most important parameters the '.connect()' PyMySQL (Python library) function takes in:
# - host – Name of host where the database server is located
# - user – Username to log in as
# - password – Password to use
# - database – Name of Relational Database (aka SQL Database) to use, enter 'None' to not use a 
#              particular Relational Database (aka SQL Database)
my_sql_relational_database_connection = pymysql.connect(
    host="",
    user="",
    password="",
    database=""
)


# Creating a 'Cursor' class instance/object using the '.cursor()' Instance Method from the 'Connection' 
# class on a 'Connection' class instance/object, which represents the object used to interact with the
# specified Relational Database (aka SQL Database) in the connected selected MySQL (SQL implementation) 
# server in the 'Connection' class instance/object
cursor = my_sql_relational_database_connection.cursor()


# The '.execute()' Instance Method of the 'Cursor' class instance/object allows you to execute MySQL
# (SQL implementation) queries within the brackets in the specified Relational Database (aka SQL Database) 
# in the connected selected MySQL (SQL implementation) server in the 'Connection' class instance/object
# where the 'Cursor' class instance/object is created from

# The '.execute()' Instance Method returns the number of rows that are affected/in the result set
cursor.execute("")


# The '.execute()' Instance Method of the 'Cursor' class instance/object allows you to retrieve all the 
# rows that are affected/in the result set. It stores each retrieved row that are affected/in the result 
# set as a tuple, which it stores all of the retrieved rows that are affected/in the result set as tuples
# in another larger tuple
rows_in_a_tuple = cursor.fetchall()
print(rows_in_a_tuple)


# Iterating over the retrieved rows that are affected/in the result set in a larger tuple and printing 
# each retrieved row that are affected/in the result set as a tuple
for row in rows_in_a_tuple:
    print(row)


# Closing the 'Cursor' class instance/object and 'Connection' class instance/object
cursor.close()
my_sql_relational_database_connection.close()
print("MySQL (SQL implementation) connection closed")


# ////////////////////////////////////////////////////////////////////////////////////////////


# Sample use of the basic code template of the PyMySQL Python library to run MySQL (SQL implementation) queries:

# This example is using the same MySQL (SQL implementation) server and Relational Database (aka SQL Database) 
# as the one used in the '1. MySQL (SQL implementation) basic syntax' folder and '2. MySQL (SQL implementation) 
# modifying Relational Databases' folders

#       import pymysql

#       my_sql_relational_database_connection = pymysql.connect(
#           host="#########",
#           user="####",
#           password="####",
#           database="moviesdb"
#       )

#       cursor = my_sql_relational_database_connection.cursor()

#       cursor.execute("SELECT * FROM movies")

#       rows_in_a_tuple = cursor.fetchall()
#       print(rows_in_a_tuple)

#       for row in rows_in_a_tuple:
#           print(row)

#       cursor.close()
#       my_sql_relational_database_connection.close()
#       print("MySQL connection closed")
