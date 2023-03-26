from pymongo import MongoClient
def get_database():
    CONNECTION_STRING = "mongodb+srv://Gowthami08:Jayahanuman%408@cluster0.uhue8lv.mongodb.net/test"
    client = MongoClient(CONNECTION_STRING)
    #print(CONNECTION_STRING)
    return client['moDB']  
  
dbname = get_database()

#customer table
collection_name = dbname["customers"]
cust_details = collection_name.find()
cust_list = {}
for cust in cust_details:
    cust_list[cust['CNO']] = cust['CNAME']
#print(cust_list)

#orders table
collection_name = dbname["orders"]
order_details = collection_name.find()
order_list = {}
for order in order_details:
    if order['CUSTOMER'] not in order_list:
        order_list[order['CUSTOMER']] = [order['ONO']]
    else:
        order_list[order['CUSTOMER']].append(order['ONO'])

final_list = {}   
for i in order_list:
    if i in cust_list:
        final_list[cust_list[i]] = order_list[i] 
print(final_list)