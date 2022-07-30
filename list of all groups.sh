#/etc/group file stores the details of groups that are present on the system. You can obtain all the group names using cut or awk command.

cut -d ":" -f 1 /etc/group
awk -F: '{print $1}' /etc/group