    #!/bin/sh -c
   user=$USER
   [ -d /opt/homework ] || sudo mkdir /opt/homework && sudo chown $user:$user /opt/homework
   cd /opt/homework/
   git clone https://github.com/snzdeveloper/shvirtd-example-python.git
   cd shvirtd-example-python/
   docker compose up -d
   sleep 30000
   docker compose down
   