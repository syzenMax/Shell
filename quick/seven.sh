#!/bin/bash

# Display logged-in users whose usernames start with 's'
who -H | grep '^s'  # 'who -H' shows logged-in users with headers, 'grep' filters names starting with 's'

# List system users from /etc/passwd whose usernames start with 's'
cat /etc/passwd | grep '^s' | cut -d: -f1  
# 'cat /etc/passwd' lists all users, 'grep' filters usernames starting with 's', 
# 'cut -d: -f1' extracts only the username field

# Alternative way to list system users whose usernames start with 's'
compgen -u | grep '^s'  
# 'compgen -u' lists all system usernames, 'grep' filters those starting with 's'
