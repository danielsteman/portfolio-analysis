from config import settings
import psycopg2

conn = psycopg2.connect(f"dbname={settings.dbname} user={settings.dbuser} password={settings.dbpassword}")
cur = conn.cursor()
cur.execute("CREATE TABLE test (id serial PRIMARY KEY, num integer, data varchar);")