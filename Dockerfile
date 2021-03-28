FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get -y update && apt-get -y upgrade
RUN apt install -y nodejs npm wget
RUN wget https://raw.githubusercontent.com/rvmey/TRIGGERcmd-Agent/master/ubuntupackage.json -O package.json
RUN npm install
RUN wget https://raw.githubusercontent.com/rvmey/TRIGGERcmd-Agent/master/src/agent.js
RUN wget https://raw.githubusercontent.com/rvmey/TRIGGERcmd-Agent/master/src/gd_bundle-g2-g1.crt
RUN wget https://raw.githubusercontent.com/rvmey/TRIGGERcmd-Agent/master/src/sendresult.sh
RUN wget https://raw.githubusercontent.com/rvmey/TRIGGERcmd-Agent/master/src/linuxcommands.json

COPY start.sh start.sh

CMD ./start.sh