from pymongo import MongoClient
def get_database():
    CONNECTION_STRING = "mongodb+srv://Gowthami08:Jayahanuman%408@cluster0.uhue8lv.mongodb.net/test"
    client = MongoClient(CONNECTION_STRING)
    #print(CONNECTION_STRING)
    return client['moDB']  
  
dbname = get_database()

#employee table
collection_name = dbname["employees"]
emp_details = collection_name.find()
cust_list = []
for cust in emp_details:
    if cust['CITY'] == 'Wichita' and cust['ENO'] not in cust_list:
        cust_list.append(cust['ENO'])

#customer table
collection_name = dbname["customers"]
cust_details = collection_name.find()
cust_dict = {}
for cus in cust_details:
    cust_dict[cus['CNO']] = cus['CNAME']

#order table
collection_name = dbname["orders"]
order_details = collection_name.find()
final_cust = []
for order in order_details:
    if order['TAKENBY'] in cust_list and order['CUSTOMER'] not in final_cust:
        final_cust.append(order['CUSTOMER'])
for i in final_cust:
    print(cust_dict[i])