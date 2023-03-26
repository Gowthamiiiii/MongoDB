from pymongo import MongoClient
def get_database():
    CONNECTION_STRING = "mongodb+srv://Gowthami08:Jayahanuman%408@cluster0.uhue8lv.mongodb.net/test"
    client = MongoClient(CONNECTION_STRING)
    #print(CONNECTION_STRING)
    return client['moDB']  
  
dbname = get_database()


#order table
collection_name = dbname["orders"]
order_details = collection_name.find()

collection_name = dbname["parts"]
part_details = collection_name.find()
part_name = {}
for k in part_details:
    part_name[k["PNO"]] = k["PNAME"]
    
final_cust = []
order_dict = {}
for order in order_details:
    for item in order['ITEMS']:
        if item['PARTNUMBER'] not in order_dict:
            order_dict[item['PARTNUMBER']] = item['QUANTITY']
        else:
            order_dict[item['PARTNUMBER']] += item['QUANTITY']
#print(order_dict)

maxx = 0
max_list = []
for i in order_dict:
    if order_dict[i] > maxx:
        max_list = [i]
        maxx = order_dict[i]
    elif order_dict[i] == maxx:
        max_list.append(i)
    else:
        continue

#get names of the parts
for j in max_list:
    print(part_name[j])
        