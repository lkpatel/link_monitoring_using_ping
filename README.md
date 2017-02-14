# link_monitoring_using_ping
Links monitoring using ping

Recently I faced a situation, where I need to monitor a link without using SNMP. So I wrote a python script to monitor link. Script is general purpose and it can be used to monitor any number for links.

#run this command in sql terminal of postgresql database for db table creation

create table link_info(link_id int,interface_ip1 inet,interface_ip2 inet,link_status boolean,last_updated timestamp(0) default now());

#put some data in table

insert into link_info values('1','172.20.21.97','172.20.21.98','t');

#For running script use following command

python link_monitor.py

#If you want to run this script periodically. you may add a entry to cron

chmod +x link_monitor.py

*/5 * * * * <linux login id> python /<your script location>/monitor_links.py

# the above entry in cron will make script to run on every 5 minute
