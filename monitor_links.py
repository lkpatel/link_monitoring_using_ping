#!/usr/bin/python
import os
import psycopg2

#method to update database
def updatedb(cur,link_id,link_status):
    cur.execute("update link_info set link_status =(%s),last_updated=now() where link_id=(%s)",(link_status,link_id,))
    conn.commit()

try:
   conn = psycopg2.connect("dbname='link_mon' user='test' host='localhost' password='test123'")
except:
   print "Unable connect to the database"

cur = conn.cursor()
cur.execute("""select link_id,interface_ip1,interface_ip2,link_status from link_info order by link_id""")
rows = cur.fetchall()
for row in rows:
  link_id=row[0]
  link_status = False
  ping_response1, ping_response2= os.system("ping -c1 -W2 "+row[1]+" >/dev/null 2>&1"), os.system("ping -c1 -W2 "+row[2]+">/dev/null 2>&1")
  if(ping_response1 == 0 and ping_response2 == 0):
    link_status = True
  updatedb(cur,link_id,link_status)
conn.close()
