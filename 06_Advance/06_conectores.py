# ESTA ES UNA PRUEBA CON LA CONEXION DE BASE DE DATOS LOCALCALMENTE
import mysql.connector

def print_user(user):
    # Todo esto ahora tiene 4 espacios de sangría:
    config = {
        "host": "127.0.0.1",
        "port": "3306",
        "database": "hello_mysql",
        "user": "root",
        "password": "admin"
    }
 
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    # Usamos f-strings para que sea más limpio
    query = "SELECT * FROM users WHERE name =%s;"
    print(query)
    cursor.execute(query, (user,))
    result = cursor.fetchall()

    for row in result:
        print(row)

    cursor.close()
    connection.close()

print_user("Erick");
print_user("'; UPDATE user SET age = '15' WHERE user_id = 1; --")
