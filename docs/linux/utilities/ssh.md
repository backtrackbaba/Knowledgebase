# SSH Utilities

## Stop SSH connection from freezing

**On the client machine in `/etc/ssh/ssh_config` add the following:**

```bash
Host *
ServerAliveInterval 100
```

**ServerAliveInterval**: The client will send a null packet to the server every 100 seconds to keep the connection alive

**NULL packet**: This is sent by the server to the client. The same packet is sent by the client to the server. A TCP NULL packet does not contain any controlling flag like SYN, ACK, FIN etc. because the server does not require a reply from the client.

**On the server in `/etc/ssh/sshd_config` add the following:**

```bash
ClientAliveInterval 60
TCPKeepAlive yes
ClientAliveCountMax 10000
```

**ClientAliveInterval**: The server will wait 60 seconds before sending a null packet to the client to keep the connection alive

**TCPKeepAlive**: This Is there to ensure that certain firewalls don't drop idle connections.

**ClientAliveCountMax**: Server will send alive messages to the client even though it has not received any message back from the client.

Depending on the machine, restart the ssh process

_*Linux Server:*_ `service sshd restart`

_*Linux Client:*_ `service ssh restart`

_*Mac Client:*_

Stop the Service - `sudo launchctl stop com.openssh.sshd`

Start the Service - `sudo launchctl start com.openssh.sshd`

---

## Aliases

Open `~/.ssh/config` and add the config given below:

```bash
Host webserver
    HostName 1.2.3.4
    User root

Host website
    HostName site.example.com
    User user

Host site2
    HostName 2.3.4.5
    User root
    Port 2233

Host ubuntu
    HostName 192.168.225.50
    User root
    IdentityFIle ~/.ssh/key_name

```

After adding the config, you could ssh into the respective server by using `ssh <alias_name>`
