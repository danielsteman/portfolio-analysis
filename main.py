from config import settings
import psycopg2
from depyro import Depyro

conn = psycopg2.connect(database=settings.dbname, host='localhost', user=settings.dbuser, password=settings.dbpassword)
cur = conn.cursor()

client = Depyro()
client.login()
data = client.get_portfolio_info()

cur.execute(open("schema.sql", "r").read())

