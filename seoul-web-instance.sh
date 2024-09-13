#!/bin/bash
yum install -y httpd
systemctl start httpd
systtemctl enable httpd
instace_id=$(ec2-metadata -i | cut -d ' ' -f 2)
private_ip=$(ec2-metadata -o | cut -d ' ' -f 2)
az_name=$(ec2-metadata -z | cut -d ' ' -f 2)
cat <<EOF > /var/www/html/index.html
<h1> 서울 웹 서버에 오신rjt을 환영합니다. </h1>
