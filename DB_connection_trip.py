'''
This program connected to mysql database and allows the user to explore the data in different tables in trip managment database.
'''
import mysql.connector
from mysql.connector import errorcode



#the method allows us to select the table in trip management database to view the data
def get_table_details():
   statuses = {1: "accommodation", 2: "activity", 3: "customer", 4: "deal", 5: "employee", 6: "package", 7: "service",
               8: "transportation"}
   print("Please select below table name required for view")
   for key in statuses:
      print("{}. {}".format(key, statuses[key]))

   status = int(input("Enter the table number which is needed to be viewed : "))
   if 0 < status <= 8:
      return statuses[status]
   else:
      return "Invalid option"

try:
   cm_connection = mysql.connector.connect(
      user="root",
      password="root",
      host="127.0.0.1",
      database="trip_managment")

except mysql.connector.Error as err:
   if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
      print("Invalid credentials")
   elif err.errno == errorcode.ER_BAD_DB_ERROR:
      print("Database not found")
   else:
      print("Cannot connect to database:", err)

else:
   print("sucessfully connected to mysql trip_managment database")
   # Creating a Cursor
   my_cursor = cm_connection.cursor()
   #get the required table name from the user.
   table_name = str(get_table_details())
   if table_name == 'Invalid option':
      print("Please select a valid table name from the list to view the data")
   else:
      #general select statement
      sql_query = ("select * from ")
      # table selected by the user
      sql_query +=(table_name)
      # Limiting the output to 3 records only.
      sql_query += (" Limit 3")
      #executing the select Query using cussor
      my_cursor.execute(sql_query)
      # Looping throught the data from the cursor execution
      print("printing the result to console")
      for row in my_cursor.fetchall():
         print(row)
   #closing the cursor
   my_cursor.close()
   # closing the connection
   cm_connection.close()
