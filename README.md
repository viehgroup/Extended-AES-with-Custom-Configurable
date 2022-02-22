This application makes it difficult to crack the cipher text as the key is only known to the sender and receiver of the message. The plain text is also encrypted using AES encryption which makes it more secure and encryption is done faster. The original plain text is first replaced with some random characters the AES encryption is performed on replaced text. Padding bits are then added to this encrypted text. Thus the cipher text becomes impossible to crack.


Project Created under: VIEH Group (Social- @viehgroup)
Credits: Karthikeya Sai Madepalli (github- @karthikeyamade)
         Prasad Pathak (github- @webysec)
         Aditya Hedge
         Venkatesh Acharya
         
         
Requirements:
tomcat server
hypercorn (pip3 install hypercorn)

Usage:
Go to API folder 
Run 'hypercorn main:app'
start your tomcat server
open in browser (localhost:8080)

-> Add the Character and symbol that replaces the character (need to remember for decryption)
-> Enter the message 
-> Enter the key (need to remember for decryption)
-> Enter the padding bits for starting and ending (need to remember for decryption)

