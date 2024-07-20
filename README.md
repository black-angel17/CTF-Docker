# POC- LFI

## This is mainly a Local filew inclusion Attack vulnerabilty that is implemented using the Dockers here--

__First using git clone add this to you directory (https://github.com/black-angel17/CTF-Docker.git)

### run the ./Deploy.sh
![image](https://github.com/user-attachments/assets/09c23d87-f20b-4170-bc47-fca0634b5525)

### it return the container ip - paste it on the browser
![image](https://github.com/user-attachments/assets/088676d8-0979-453e-839f-1a6440bea76c)


## first scan this using nmap
![image](https://github.com/user-attachments/assets/3c6e1ccd-63a4-4ea3-b2e0-4d9e49e32d34)



### now Webpage should be visible
![image](https://github.com/user-attachments/assets/2cce0d44-468e-47f8-9e8e-e0f1bb070ad7)

### Using inspect see the hints on the (html)
![image](https://github.com/user-attachments/assets/da13c1b4-0892-45b2-a803-8283b491300d)

### now search for hints on the quotes u see

![image](https://github.com/user-attachments/assets/1cfd8085-44f4-4731-b350-fafac1996563)

## this tell the vulnerbility is Local File Inclusion now 
### search for more on Java script
![image](https://github.com/user-attachments/assets/0e689a4e-1aa4-4836-80fa-4e6882be679b)

### this code is vulnerable it fetches note1,note2,note3
### by 3 different request by changinthe path im including the server.js file directly which return the content of the server code

![image](https://github.com/user-attachments/assets/c8334806-f33d-4a35-91b5-8749acf17268)

### After reding the server side scripting it is including the files which out considering any input validation so im using path traversal to /etc/passwd file 
![image](https://github.com/user-attachments/assets/d3c4ac12-d339-4e6a-a427-094effabe565)

## now the user name and the home path is visible
## (../../../../../../../../../home/floki/.ssh/id_rsa) -- this payload works well after url encode
![image](https://github.com/user-attachments/assets/3baabbb2-6d21-4c57-8936-cb29afaa8fda)

### Now we got private key,we already know ssh port is open so i used ssh to connect
![image](https://github.com/user-attachments/assets/1ef8d836-2fde-4d73-8e36-9cbe050d963c)

#### which return the shell
## Now i got the first flag
![image](https://github.com/user-attachments/assets/ef5136b8-323d-45ae-ad68-1f56ca56dd0f)

# for privilage escalation
![image](https://github.com/user-attachments/assets/9547e4f4-854a-4167-bc1c-77986697a6a0)

## this vi binary is vulnerable 
## so search for explaoit in online we got the payload and successfully got the root user privilage
![image](https://github.com/user-attachments/assets/587e9f7c-37e9-4104-9866-cab7f95d1ab2)

## now we got the root flag 
