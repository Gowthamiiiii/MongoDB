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

zip_cust = {}
for cust in cust_details:
    zip_cust[cust['CNO']] = cust['ZIP']
    
#employee table
collection_name = dbname["employees"]
emp_details = collection_name.find()

zip_emp = {}
for emp in emp_details:
    zip_emp[emp['ENO']] = emp['ZIP']
    
#employee table
collection_name = dbname["employees"]
emp_details = collection_name.find()
name_emp = {}
emp_names = []
for emp in emp_details:
    name_emp[emp['ENO']] = emp['ENAME']
    emp_names.append(emp['ENAME'])
 
#order table
collection_name = dbname["orders"]
order_details = collection_name.find()
emp_list = []
for i in order_details:
    if zip_emp[i['TAKENBY']] == zip_cust[i['CUSTOMER']]:
        emp_list.extend([i['TAKENBY']])
my_emp = list(set(emp_list))

total_list = []
for j in my_emp:
    total_list.append(name_emp[j])
    
my_emps = list(set(emp_names))
final_list = []
for k in my_emps:
    if k not in total_list:
        final_list.append(k)

print(final_list)


