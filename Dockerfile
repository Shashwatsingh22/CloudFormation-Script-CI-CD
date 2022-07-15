FROM ubuntu:latest

WORKDIR /home

#Copy all files
COPY . .

RUN apt-get update

RUN apt install git -y; apt install python3 -y; apt install curl -y;apt install unzip -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

RUN unzip awscliv2.zip

RUN ./aws/install

RUN aws configure list

#Execute the Shell Script
RUN chmod +x main.sh

ENTRYPOINT ["./main.sh"]
