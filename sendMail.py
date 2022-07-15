import smtplib
import os
import sys
import json

def mailWithAttachement(Email_Address, Email_Password, Reciver_Mail,file,Subject, Body,fileName):
    from email.message import EmailMessage
    msg=EmailMessage()
    msg["Subject"]=Subject
    msg["From"]=Email_Address
    msg["To"]=Reciver_Mail
    msg.set_content(Body)

    with open(file,"rb") as file:
        file_data=file.read()
            #Now we are going to find the ext of the image like pdf ,docx... ...

        msg.add_attachment(file_data,maintype="application",subtype="octet_stream",filename=fileName)

    with smtplib.SMTP_SSL('smtp.gmail.com','465') as smtp:
        smtp.login(Email_Address,Email_Password)

        smtp.send_message(msg)
        return 1;

    return 0;

def findMailOfDev(fileName):
    file=open(fileName,'r')
    data=file.read();
    data=json.loads(data)
    return data['mail']

def main():
    
    isError=sys.argv[1];
    isSent=0;
    
    emailAdd = os.environ.get('EMAIL_ADD')
    emailPass = os.environ.get('EMAIL_PASS')
    reciverMail = findMailOfDev('data.json')
    #print(isError)

    if(isError=="error-found"):
        subject="We Got Some Error In Your CloudFormation Template!"
        body="Error are given by attachement!"
        file="report/error.log"
    
        isSent = mailWithAttachement(emailAdd,emailPass,reciverMail,file,subject,body,"error.log")
    
    elif(isError=="no-error-found"):
        subject="Congratulation Your Script is Perfectly Fine!"
        body="We have output for Your CF-template"
        file="report/output.log"

        isSent = mailWithAttachement(emailAdd,emailPass,reciverMail,file,subject,body,"output.log")
        
    if(isSent):
        print("Mail Sent")

    else:
        print("Some Error Caused")

if __name__ == "__main__":
    main()
