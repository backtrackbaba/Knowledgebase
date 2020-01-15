# User Management

## Create Password for a User
`sudo passwd <username>`

## Creating a new User
`sudo adduser <username> --disabled-password`

## List all users
`cat /etc/passwd`

## Delete User
``

## Add new user to a group
`usermod -aG sudo <username>`

## Allow user sudo access without password

Open `/etc/sudoers` by running `sudo visudo` as **root**

