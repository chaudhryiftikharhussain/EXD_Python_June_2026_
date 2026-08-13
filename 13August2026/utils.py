import mysql.connector

def mysql_connect():
    try:
        connection = mysql.connector.connect(
            host="127.0.0.1",
            port=3306,
            user="root",
            password="",
            database="ambulance_service",
            use_pure=True  # to avoid error (0xC0000005)
        )
        return connection
    except Exception as e:
        print(e)