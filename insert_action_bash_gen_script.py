import uuid
import sys
import socket

file = open("actions.lst","r")
f_file = open("actions_formatted.txt","w")
for line in file:
    f_line = "jrn:jcs:"+line+""
    f_file.write(f_line)

file.close()
f_file.close()

file = open("actions_formatted.txt","r")
q_file = open("actions_sql.txt","w")

for line in file:
    q_line = "INSERT INTO action (id, action_name, service_type) VALUES (" +\
              "\'" + str(uuid.uuid4()) + "\'" + "," + "\'" + line.rstrip() + "\'" + "," + "\'" + line.split(':')[2] + "\'" + ")\n"
    q_file.write(q_line)

file.close()
q_file.close()

file = open("actions_sql.txt","r")
file_op = open("insert_actions_bash.sh","w")

if len(sys.argv) != 1:
    user = sys.argv[1]
    password = sys.argv[2]
else:
    user = raw_input('Enter mysql user: ')
    password = raw_input('Enter mysql password: ')

hostname = socket.gethostname()

for line in file:
    line_op = "mysql -u" + user + " -p" + password + " -h" + hostname + " keystone -e \""+line.rstrip()+"\"\n"
    file_op.write(line_op)

file.close()
file_op.close()
