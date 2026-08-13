# Connect MySQL database in python code
# pip install mysql-connector-python
# pip install xhtml2pdf

import mysql.connector
import json
from xhtml2pdf import pisa

print("mysql-connection-python installed successfully")

ambulances = None
try:
    connection = mysql.connector.connect(
        host="127.0.0.1",
        port=3306,
        user="root",
        password="",
        database="ambulance_service",
        use_pure=True  # to avoid error (0xC0000005)
    )
    if connection.is_connected():
        print("Database Connected...")
        cursor = connection.cursor()
        cursor.execute("SELECT * FROM ambulance")
        ambulances = cursor.fetchall()
except Exception as e:
    print(e)

# if connection:
#     if connection.is_connected():
#         print("Database Connected")
#         cursor = connection.cursor()
#         cursor.execute("SELECT * FROM ambulance")
#         a = cursor.fetchall()
#         print(a)

print(ambulances)

ambulance_list = []
for ambulance in ambulances:
    ambulance = {
        "id": ambulance[0],
        "vehicle_number": ambulance[1],
        "driver_name": ambulance[2],
        "ambulance_type": ambulance[3],
        "status": ambulance[4],
    }
    ambulance_list.append(ambulance)

print(ambulance_list)

with open('ambulances.json', 'w') as outfile:
    outfile.write(json.dumps(ambulance_list, indent=4))

all_trs = ""
for ambulance in ambulance_list:
    tr = f"""
    <tr>
            <td>{ambulance['id']}</td>
            <td>{ambulance['vehicle_number']}</td>
            <td>{ambulance['driver_name']}</td>
            <td>{ambulance['ambulance_type']}</td>
            <td>{ambulance['status']}</td>
        </tr>
    """
    all_trs = all_trs + tr

print("all_trs")
# print(all_trs)

main_template = f"""
<!DOCTYPE html>
<html>
<head>
    <title>Ambulance List</title>

    <style>
        table {{
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }}

        th, td {{
            border: 1px solid #333;
            padding: 10px;
            text-align: center;
        }}

        th {{
            background-color: #e74c3c;
            color: white;
        }}

        tr:nth-child(even) {{
            background-color: #f2f2f2;
        }}
    </style>
</head>

<body>

    <h2 style="text-align: center;">Ambulance List</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Vehicle Number</th>
            <th>Driver Name</th>
            <th>Type</th>
            <th>Status</th>
        </tr>

        {all_trs}

    </table>

</body>
</html>
"""

print(main_template)

with open('ambulances_v1.html', 'w') as outfile:
    outfile.write(main_template)


from datetime import date
date = date.today().strftime("%d-%m-%Y")

with open(f"ambulance_v1_{date}.pdf", "wb") as pdf_file:
    pisa.CreatePDF(
        main_template,
        dest=pdf_file
    )

print("PDF created successfully!")

# Sending Email

print("Email Sent")