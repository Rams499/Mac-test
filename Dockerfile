FROM ubuntu:18.04

# Running few commands to update the ubuntu container
RUN apt-get update -y; \
    apt-get install curl -y; \
    apt-get install jq -y

# Taking the dynamic environment variables for mac_id and API
ENV mac_id=44:38:39:ff:ef:57  
ENV API=at_jwKEFOqXByT9m7cs9qkkat0vcUya9

# Copy our code to docker container
COPY api-mac.sh /tmp/api-mac.sh
COPY api-secert.env /tmp/api-secerts.env

# Give permission to execute and run the code
RUN chmod +x /tmp/api-mac.sh

CMD [/tmp/api-mac.sh]
ENTRYPOINT /bin/bash

