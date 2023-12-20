import mysql.connector
import pandas as pd

# Konfigurasi database
db_config = {
    'host': 'localhost',
    'user': 'root',
    'password': '',
    'database': 'db_bigdata'
}

# Connect to MySQL
conn = mysql.connector.connect(**db_config)
cursor = conn.cursor()

# SQL Query
sql_query = "SELECT * FROM tbl_pasien"

# Execute the query and fetch the data
cursor.execute(sql_query)
data = cursor.fetchall()

# Column names
columns = [i[0] for i in cursor.description]

# Create a DataFrame
df = pd.DataFrame(data, columns=columns)

# Close MySQL connection
cursor.close()
conn.close()

# Export to Excel (XLSX)
excel_file_path = 'tbl_pasien.xlsx'
df.to_excel(excel_file_path, index=False)

# Export to CSV with UTF-8 encoding
csv_file_path = 'tbl_pasien.csv'
df.to_csv(csv_file_path, index=False, encoding='utf-8')

# Export to JSON with UTF-8 encoding
json_file_path = 'tbl_pasien.json'
df.to_json(json_file_path, orient='records', force_ascii=True)

print(f'Data exported to {excel_file_path}, {csv_file_path}, and {json_file_path}')
