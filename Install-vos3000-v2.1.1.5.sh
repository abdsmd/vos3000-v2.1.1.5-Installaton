# VOS Client Download 
# www.173.82.151.19/download/vos3000-client-v2-1-1-5.exe


/etc/init.d/iptables status
/etc/init.d/iptables save
/etc/init.d/iptables stop
chkconfig iptables off
/etc/init.d/ip6tables status
/etc/init.d/ip6tables save
/etc/init.d/ip6tables stop
chkconfig ip6tables off
cat /etc/issue

yum remove mysql* -y
yum remove perl* -y

cd /usr
wget http://173.82.151.19/vos2115/apache-tomcat-5.5.15.tar.gz
wget http://173.82.151.19/vos2115/emp-2.1.1-5.noarch.rpm
wget http://173.82.151.19/vos2115/ivr-2.1.1-5.i586.rpm
wget http://173.82.151.19/vos2115/jdk-1_5_0_08-linux-i586.rpm
wget http://173.82.151.19/vos2115/mbx3000-2.1.1-5.i586.rpm
wget http://173.82.151.19/vos2115/MySQL-client-community-5.0.51a-0.rhel4.i386.rpm
wget http://173.82.151.19/vos2115/MySQL-server-community-5.0.51a-0.rhel4.i386.rpm
wget http://173.82.151.19/vos2115/perl-DBI-1.40-5.i386.rpm
wget http://173.82.151.19/vos2115/vos3000-2.1.1-5.i586.rpm


cd /usr
tar xvf apache-tomcat-5.5.15.tar.gz
yum install perl -y
rpm -ivh perl-DBI-1.40-5.i386.rpm
rpm -ivh MySQL-server-community-5.0.51a-0.rhel4.i386.rpm
rpm -ivh MySQL-client-community-5.0.51a-0.rhel4.i386.rpm
rpm -ivh jdk-1_5_0_08-linux-i586.rpm
rpm -ivh emp-2.1.1-5.noarch.rpm
rpm -ivh mbx3000-2.1.1-5.i586.rpm
rpm -ivh vos3000-2.1.1-5.i586.rpm
rpm -ivh ivr-2.1.1-5.i586.rpm

/etc/init.d/mbx3000d restart
/etc/init.d/mysql restart
/etc/init.d/vos3000d  restart
/etc/init.d/vos3000dall  restart
/etc/init.d/empd restart
/etc/init.d/ivrd restart

------------------------------------------------------------

ifconfig
cd /usr/kunshi
mkdir license
cd license
vi license.dat
# Now Paste Your Licese Here
# for License Contact abdsmd@gmail.com
# -----------------

chmod 755 license.dat

cat <<EOF >/etc/sysconfig/selinux
SELINUX=disabled
SELINUXTYPE=targeted
SETLOCALDEFS=0
EOF

------------------------------------------------------------------------------------------------

mysql

CREATE USER 'vos3000db'@'localhost' IDENTIFIED BY 'vos3000db';
GRANT ALL PRIVILEGES ON *.* TO 'vos3000db'@'localhost';
FLUSH PRIVILEGES;
\q

---------------------------


cat <<EOF >/etc/sysconfig/clock
ZONE="Asia/Dhaka"
EOF

rm /etc/localtime -f
cp /usr/share/zoneinfo/Asia/Dhaka /etc/localtime
yum -y install ntp
ntpdate pool.ntp.org
ntpdate pool.ntp.org
service ntpd restart
service ntpd restart
service ntpd stop
ntpdate pool.ntp.org
ntpdate pool.ntp.org
hwclock -wu
hwclock -wu
service ntpd restart
service ntpd restart
chkconfig --level 345 ntpd on
/etc/init.d/ntpd start
chkconfig iptables --level 2345 on
reboot -f
--------------------------------

