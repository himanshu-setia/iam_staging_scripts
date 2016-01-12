# USE v3 CLIENT
. admin-openrc

read -p "Enter mysql: username password hostname " MYSQL_USER MYSQL_PASSWORD MYSQL_HOSTNAME 

# INSERT ACTIONS IN ACTION TABLE
# FAILING DUE TO FOREIGN KEY CONSTRAINTS ADDED WITH ACTION - SERVICE_TYPE MAPPING CHECKINS.. 

# python insert_action_bash_gen_script.py $MYSQL_USER $MYSQL_PASSWORD $MYSQL_HOSTNAME
# sh insert_actions_bash.sh

# CREATE JCS_DOMAIN 
openstack domain create --description "Contains Admin users having create account permissions" jcs_domain

# CREATE PROJECT INSIDE THIS DOMAIN... (TO BE DEPRECATED)
openstack project create --domain jcs_domain jcs_domain

# CREATE ROOT USER INSIDE THIS DOMAIN-PROJECT
openstack user create --domain jcs_domain --project jcs_domain key_admin

# ATTACH ADMIN ROLE TO ROOT USER
openstack role add --domain jcs_domain --user key_admin admin


##############################################
#	     CUSTOMER ACCOUNTS               #
##############################################

# CREATE DEFAULT CUSTOMER ACCOUNTS:  
openstack domain create --description "Account for dss team" dss
openstack domain create --description "Account for sbs team" sbs
openstack domain create --description "Account for rds team" rds
openstack domain create --description "Account for compute team" compute
openstack domain create --description "Account for iam team" iam
openstack domain create --description "Account for vpc team" vpc   
openstack domain create --description "Account for Mr. Vishal Chaturvedi" Vishal.Chaturvedi
openstack domain create --description "Account for Mr. Valliappan Letchumanan" Valliappan.Letchumanan
openstack domain create --description "Account for Mr. Varughese Cherian" Varughese.Cherian
openstack domain create --description "Account for trials" NaMo
openstack domain create --description "Account for trials" RaGa
  
# CREATE PROJECT INSIDE THIS DOMAIN... (TO BE DEPRECATED)
openstack project create --domain dss dss
openstack project create --domain sbs sbs
openstack project create --domain rds rds
openstack project create --domain compute compute
openstack project create --domain iam iam
openstack project create --domain vpc vpc
openstack project create --domain Vishal.Chaturvedi Vishal.Chaturvedi
openstack project create --domain Valliappan.Letchumanan Valliappan.Letchumanan
openstack project create --domain Varughese.Cherian Varughese.Cherian
openstack project create --domain NaMo NaMo
openstack project create --domain RaGa RaGa

# CREATE ROOT USER INSIDE THIS DOMAIN-PROJECT
openstack user create --domain dss --project dss dss_root_user --password P@ssword123
openstack user create --domain sbs --project sbs sbs_root_user --password P@ssword123
openstack user create --domain rds --project rds rds_root_user --password P@ssword123
openstack user create --domain compute --project compute compute_root_user --password P@ssword123
openstack user create --domain iam --project iam iam_root_user --password P@ssword123
openstack user create --domain vpc --project vpc vpc_root_user --password P@ssword123
openstack user create --domain Vishal.Chaturvedi --project Vishal.Chaturvedi Vishal --password P@ssword123
openstack user create --domain Valliappan.Letchumanan --project Valliappan.Letchumanan Val --password P@ssword123
openstack user create --domain Varughese.Cherian --project Varughese.Cherian Varughese --password P@ssword123
openstack user create --domain NaMo --project NaMo NaMo_root_user --password P@ssword123
openstack user create --domain RaGa --project RaGa RaGa_root_user --password P@ssword123

# ATTACH _member_ ROLE TO ROOT USER

openstack role add --domain dss --user dss_root_user _member_
openstack role add --domain sbs --user sbs_root_user _member_
openstack role add --domain rds --user rds_root_user _member_
openstack role add --domain compute --user compute_root_user _member_
openstack role add --domain iam --user iam_root_user _member_
openstack role add --domain vpc --user vpc_root_user _member_
openstack role add --domain Vishal.Chaturvedi --user Vishal _member_
openstack role add --domain Valliappan.Letchumanan --user Val _member_
openstack role add --domain Varughese.Cherian --user Varughese _member_
openstack role add --domain NaMo --user NaMo_root_user _member_
openstack role add --domain RaGa --user RaGa_root_user _member_


# GET USER_IDs IN A VARIABLE
user_id_dss_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='dss_root_user'"`
user_id_sbs_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='sbs_root_user'"`
user_id_rds_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='rds_root_user'"`
user_id_compute_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='compute_root_user'"`
user_id_iam_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='iam_root_user'"`
user_id_vpc_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='vpc_root_user'"`
user_id_Vishal=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='Vishal'"`
user_id_Val=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='Val'"`
user_id_Varughese=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='Varughese'"`
user_id_NaMo_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='NaMo_root_user'"`
user_id_RaGa_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM user WHERE user.name='RaGa_root_user'"`

# EXTRACT CORRECT USER_IDs
read junk user_id_dss_root_user <<< $user_id_dss_root_user
read junk user_id_sbs_root_user <<< $user_id_sbs_root_user
read junk user_id_rds_root_user <<< $user_id_rds_root_user
read junk user_id_compute_root_user <<< $user_id_compute_root_user
read junk user_id_iam_root_user <<< $user_id_iam_root_user
read junk user_id_vpc_root_user <<< $user_id_vpc_root_user
read junk user_id_Vishal <<< $user_id_Vishal
read junk user_id_Val <<< $user_id_Val
read junk user_id_Varughese <<< $user_id_Varughese
read junk user_id_NaMo_root_user <<< $user_id_NaMo_root_user
read junk user_id_RaGa_root_user <<< $user_id_RaGa_root_user

# GET PROJECT_IDs IN A VARIABLE
project_id_dss_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='dss'"`
project_id_sbs_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='sbs'"`
project_id_rds_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='rds'"`
project_id_compute_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='compute'"`
project_id_iam_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='iam'"`
project_id_vpc_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='vpc'"`
project_id_Vishal=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='Vishal.Chaturvedi'"`
project_id_Val=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='Valliappan.Letchumanan'"`
project_id_Varughese=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='Varughese.Cherian'"`
project_id_NaMo_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='NaMo'"`
project_id_RaGa_root_user=`mysql -u$MYSQL_USER -p$MYSQL_PASSWORD -h$MYSQL_HOSTNAME keystone -e "SELECT id FROM project WHERE project.name='RaGa'"`

# EXTRACT CORRECT PROJECT_IDs
read junk project_id_dss_root_user <<< $project_id_dss_root_user
read junk project_id_sbs_root_user <<< $project_id_sbs_root_user
read junk project_id_rds_root_user <<< $project_id_rds_root_user
read junk project_id_compute_root_user <<< $project_id_compute_root_user
read junk project_id_iam_root_user <<< $project_id_iam_root_user
read junk project_id_vpc_root_user <<< $project_id_vpc_root_user
read junk project_id_Vishal <<< $project_id_Vishal
read junk project_id_Val <<< $project_id_Val
read junk project_id_Varughese <<< $project_id_Varughese
read junk project_id_NaMo_root_user <<< $project_id_NaMo_root_user
read junk project_id_RaGa_root_user <<< $project_id_RaGa_root_user

token=`openstack token issue`
read a b c d e f g h i j k l m n o OS_TOKEN q <<< $token

# GENERATE ACCESS-SECRET KEY CREDENTIALS
curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_dss_root_user"'","blob": "{\"access\":\"c312c8c23a9e45398003b256759cef05\",\"secret\":\"39d454a4c4ea4ea1bb7ccdac7c3ba389\"}","project_id": "'"$project_id_dss_root_user"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_sbs_root_user"'","blob": "{\"access\":\"cecda7a3de6d4eb997460d1524135967\",\"secret\":\"6544313324fe4b20991d77e3481a8446\"}","project_id": "'"$project_id_sbs_root_user"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_rds_root_user"'","blob": "{\"access\":\"62f734ab29b84ba0976795632687b53e\",\"secret\":\"506f88343c0d49849db0a04316e338b9\"}","project_id": "'"$project_id_rds_root_user"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_compute_root_user"'","blob": "{\"access\":\"9c09627868e647f393ab14e2f29ca9c1\",\"secret\":\"8bd611959ba7491c98ede613d1a461f6\"}","project_id": "'"$project_id_compute_root_user"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_iam_root_user"'","blob": "{\"access\":\"55a51e48a6ad4f34b2a270d1fc218800\",\"secret\":\"e8caa31664404adda03d18da622f9fde\"}","project_id": "'"$project_id_iam_root_user"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_vpc_root_user"'","blob": "{\"access\":\"1b0b5129b0fb47d393ca3d1ab76d6059\",\"secret\":\"be14df3237f94bd3b73ced73a35a6515\"}","project_id": "'"$project_id_vpc_root_user"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_Vishal"'","blob": "{\"access\":\"5bf272d763904dc4974c21c643620977\",\"secret\":\"c0b0b675a7854b4b912abc0a004953e4\"}","project_id": "'"$project_id_Vishal"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_Val"'","blob": "{\"access\":\"340641dcca8e4189811ed143b73fb2f9\",\"secret\":\"5ddb5fd0f0c34fc4bd61cc3022158d30\"}","project_id": "'"$project_id_Val"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_Varughese"'","blob": "{\"access\":\"8a3c3250a88445be8db33df5bece93ca\",\"secret\":\"76c8e297a4064b548d69a0f1776e101a\"}","project_id": "'"$project_id_Varughese"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_NaMo_root_user"'","blob": "{\"access\":\"e605d3a5000a4a04a365d2ffedd315bc\",\"secret\":\"b8067dde244d4f9c847e869653fd8df9\"}","project_id": "'"$project_id_NaMo_root_user"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials

curl -i -H "Content-Type: application/json" -H "X-Auth-Token: $OS_TOKEN" -d '{"credential":{"user_id": "'"$user_id_RaGa_root_user"'","blob": "{\"access\":\"fc63f873343d4cf083735c52d93c137f\",\"secret\":\"598822379302429bbf482fd50fc1598f\"}","project_id": "'"$project_id_RaGa_root_user"'","type": "ec2"}}' https://iam.ind-west-1.staging.jiocloudservices.com:35357/v3/credentials


