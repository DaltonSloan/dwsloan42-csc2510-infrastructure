#!/bin/bash

# Check if password argument is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <new_password>"
    exit 1
fi

# Assign the new password provided as an argument
new_password=$1

# Update the root user's password in MySQL
mysql -uroot -p"${new_password}" <<EOF
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '${new_password}';
FLUSH PRIVILEGES;
EOF

# Check if the query was successful
if [ $? -eq 0 ]; then
    echo "MySQL root password updated successfully."
    exit 0
else
    echo "Error: Failed to update MySQL root password."
    exit 1
fi
