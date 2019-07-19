# Mac-test
tracking company Name by using Mac Address

The logic can be execute using docker or locally.

# steps to execute using docker
clone the git code and run the below docker command to build, run and see the output in the logs. while docker run give the expected MAC address parameter. once done get the active container id from 'docker ps -a' to check the logs to get thhe company Name

docker build -t [image-name] .  
docker run -d --env mac_id=00:00:00:a1:2b:cc myimage /tmp/api-mac.sh
docker ps -a
docker logs [container id]

# steps to execute in local

Clone the git code and uncomment the mentioned code and execute the below command by passing MAC address. then you can see the company name which is associated with that MAC address

./api-mac.sh [mac_id]
