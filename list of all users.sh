#/etc/passwd stores the details of users that are present on the system. Using cut or awk command, you can obtain a list of all users.

$cut -d ":" -f 1 /etc/passwd
$awk -F: '{print $1}' /etc/passwd