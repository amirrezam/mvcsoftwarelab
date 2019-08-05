password=amirrezamozayani@gmail.com
username=94110169
ant make
sshpass -p "$password" scp -o StrictHostKeyChecking=no mvc.jar $username@198.144.184.34:/home/$username/
sshpass -p "$password" scp -o StrictHostKeyChecking=no -r static $username@198.144.184.34:/home/$username/
sshpass -p "$password" ssh $username@198.144.184.34 pkill java
sshpass -p "$password" ssh $username@198.144.184.34 nohup java -jar /home/$username/mvc.jar &