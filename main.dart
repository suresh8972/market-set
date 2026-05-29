jenkins installtion commands  (with Dasboard) 
==============================

sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/rpm-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/rpm-stable/jenkins.io-2026.key
sudo yum upgrade
sudo yum install java-21-amazon-corretto -y
sudo yum install jenkins -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins

tomcat installation commands  (with Dasboard)
=============================
yum install java-17-amazon-corretto -y
wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.117/bin/apache-tomcat-9.0.117.tar.gz
tar -zxvf apache-tomcat-9.0.117.tar.gz
sed -i '56  a\<role rolename="manager-gui"/>' apache-tomcat-9.0.117/conf/tomcat-users.xml
sed -i '57  a\<role rolename="manager-script"/>' apache-tomcat-9.0.117/conf/tomcat-users.xml
sed -i '58  a\<user username="tomcat" password="admin@123" roles="manager-gui, manager-script"/>' apache-tomcat-9.0.117/conf/tomcat-users.xml
sed -i '59  a\</tomcat-users>' apache-tomcat-9.0.117/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-9.0.117/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-9.0.117/webapps/manager/META-INF/context.xml
sed -i '22d'  apache-tomcat-9.0.117/webapps/manager/META-INF/context.xml
sh apache-tomcat-9.0.117/bin/startup.sh

NEXUS SETUP COMMANDS : (copy paste these commands one by one) using artifact that means files ni backup teeyadaniki backup kosam nexus use chestam
==================================================================================================================================================

yum install java-17-amazon-corretto -y
cd /opt
wget https://download.sonatype.com/nexus/3/nexus-3.91.0-07-linux-x86_64.tar.gz
tar -zxvf nexus-3.91.0-07-linux-x86_64.tar.gz
useradd nexus
chown -R nexus:nexus nexus-3.91.0-07 sonatype-work
su - nexus
cd /app/nexus-3.91.0-07/bin/
./nexus start


