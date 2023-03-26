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
cust_dict = {}
for cus in cust_details:
    cust_dict[cus['CNO']] = cus['CNAME']

#order table
collection_name = dbname["orders"]
order_details = collection_name.find()
final_cust = []
for order in order_details:
    order_dict = {}
    order_by = order['TAKENBY']
    for item in order['ITEMS']:
        if order['TAKENBY'] not in order_dict:
            order_dict[order['TAKENBY']] = [(item['PARTNUMBER'],item['QUANTITY'])]
        else:
            order_dict[order['TAKENBY']].append((item['PARTNUMBER'],item['QUANTITY']))
    final_cust.append(order_dict)
#print(final_cust)
new_dict = {}
for i in final_cust:
    key = list(i.keys())[0]
    value = list(i.values())[0]
    if key not in new_dict:
        new_dict[key] = value
    else:
        new_dict[key].extend(value)
        
#for key, value in new_dict.items():
#    new_dict[key] = list(set(value)) 
#part table
collection_name = dbname["parts"]
parts_details = collection_name.find()
order_det = []

part_price = {}
for k in parts_details:
    part_price[k["PNO"]] = k["PRICE"]
    
total_list = []
for i in new_dict:
    summ = 0
    total_list.append(i)
    for j in list(new_dict[i]):
        summ += part_price[j[0]] * j[1]
    print("emp-no : " + str(i)  + " , sales : " + str(summ))


#employee table
collection_name = dbname["employees"]
emp_details = collection_name.find()
cust_list = []
for cust in emp_details:
    cust_list.append(cust['ENO'])
myy_list = list(set(list(cust_list)))

for i in myy_list:
    if i not in total_list:
        print("emp-no :" , str(i), ", sales : " ,0)

    
    