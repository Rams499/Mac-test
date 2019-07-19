# Mac-test
tracking company Name by using Mac Address

The logic can be execute using docker or locally.

# steps to execute using docker
clone the git code and run the below docker command to build, run and see the output on the command line. while doing docker run, give the expected MAC address parameter. once done you can see the company Name on the command line.if you want to override the MAC address then you should use the docker run with env variable mac_id

docker build -t [image-name] .  
docker run --rm [image-name] /tmp/api-mac.sh
docker run --rm --env mac_id=00:00:00:a1:2b:cc [image-name] /tmp/api-mac.sh

# Sample Output while running docker commands

➜  test docker run --rm myimage /tmp/api-mac.sh

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   650  100   650    0     0    719      0 --:--:-- --:--:-- --:--:--   719
Mac address - 44:38:39:ff:ef:57 is associated with Company - "Cumulus Networks, Inc"

➜  test docker run --rm --env mac_id=00:00:00:a1:2b:cc myimage /tmp/api-mac.sh

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   682  100   682    0     0    797      0 --:--:-- --:--:-- --:--:--   796
Mac address - 00:00:00:a1:2b:cc is associated with Company - "Xerox Corp"

# steps to execute in local

Clone the git code and uncomment the mentioned code and execute the below command by passing MAC address. then you can see the company name which is associated with that MAC address

./api-mac.sh [mac_id]

# sample Output while running locally

➜  test ./api-mac.sh 00:00:00:a1:2b:cc

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   682  100   682    0     0    773      0 --:--:-- --:--:-- --:--:--   772
Mac address - 00:00:00:a1:2b:cc is associated with Company - "Xerox Corp"
