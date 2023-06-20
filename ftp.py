from ftplib import FTP
server = "127.0.0.1"
port = 14148

try:
    ftp=FTP()
    ftp.connect(server,port)
    print(ftp.getwelcome())
    print ("[+] conecction succesful")

except Exception as e:
    print ("[-] connection refused" + str(e))
