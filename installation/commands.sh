#! /bin/bash
yum -y install postfix
systemctl start postfix
systemctl enable postfix
yum -y install curl openssh-server cronie
systemctl disable firewalld
systemctl stop firewalld
curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh |bash
yum install gitlab-ce
vi /etc/gitlab/gitlab.rb
export EXTERNAL_URL=http://ip:port
#external_url EXTERNAL_URL
gitlab-ctl reconfigure