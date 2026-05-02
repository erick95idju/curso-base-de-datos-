# ESTA ES UNA PRUEBA CON LA CONEXION DE BASE DE DATOS A UN SERVIDOR EN LA NUBE
import mysql.connector

def print_user(user):
    # Todo esto ahora tiene 4 espacios de sangría:
    config = {
        "host": "bhg5p2wure9cqyhgdniw-mysql.services.clever-cloud.com",
        "port": "3306",
        "database": "bhg5p2wure9cqyhgdniw",
        "user": "uf0jryilfcwyixyk",
        "password": "9G3jObMRwGXalUyusgdF"
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

print_user("marcos");
#print_user("'; UPDATE user SET age = '15' WHERE user_id = 1; --")
