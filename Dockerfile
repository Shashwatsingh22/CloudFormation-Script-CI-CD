FROM ubuntu:latest

WORKDIR /home

RUN apt-get update

RUN apt install git -y; apt install python3 -y

#Copy all files
COPY . .

#Execute the Shell Script
RUN chmod +x main.sh

#ENTRYPOINT ["./main.sh"]
