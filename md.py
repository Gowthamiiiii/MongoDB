from pymongo import MongoClient
from datetime import datetime
def get_database():
    CONNECTION_STRING = "mongodb+srv://Gowthami08:Jayahanuman%408@cluster0.uhue8lv.mongodb.net/test"
    client = MongoClient(CONNECTION_STRING)
    #print(CONNECTION_STRING)
    return client['moDB']  
  
dbname = get_database()


#customer table
collection_name = dbname["customers"]
cust_details = collection_name.find()

zip_cust = {}
for cust in cust_details:
    zip_cust[cust['CNO']] = cust['CNAME']

 
#order table
collection_name = dbname["orders"]
order_details = collection_name.find()
emp_list = []
emp_diff = []
for i in order_details:
    if "RECEIVEDDATE" in i and "SHIPPEDDATE" in i:

        received_date = datetime.strptime(i['RECEIVEDDATE'], "%Y-%m-%d")
        shipped_date = datetime.strptime(i['SHIPPEDDATE'], "%Y-%m-%d")
        date_diff = shipped_date - received_date
        emp_diff.append((i['CUSTOMER'],date_diff.days))

maxx = 0
max_value_list = []
for j in emp_diff:
    if j[1] > maxx:
        maxx = j[1]
        max_value_list = [j[0]]
    elif j[1] == maxx:
        max_value_list.append(j[0])
    else:
        continue 

for k in max_value_list:
    print(zip_cust[k])

    

        