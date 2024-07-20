# POC- LFI

## This is mainly a Local filew inclusion Attack vulnerabilty that is implemented using the Dockers here--

### First using git clone add this to you directory 
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

##this code is vulnerable it fetches note1,note2,note3
##by 3 different request by changinthe path im including the server.js file directly which return the content of the server code
![image](https://github.com/user-attachments/assets/c8334806-f33d-4a35-91b5-8749acf17268)

### After reding the server side scripting it is including the files which out considering any input validation so im using path traversal to /etc/passwd file 
![image](https://github.com/user-attachments/assets/d3c4ac12-d339-4e6a-a427-094effabe565)

##now the user name and the home path is visible
