from fastapi import FastAPI
from AES import AESCipher
app = FastAPI()
 
@app.get("/got_it/{key}/{mess}")
def read_course(key,mess):
  f=AESCipher(key)
  lol=f.encrypt(mess)
  
  return {"message for you": lol}

@app.get("/give_it/{key}/{mess}")
def rr(key,mess):
  a=mess.replace('%2B','+')
  b=a.replace('%2F',"/")
  me=b.replace('_',"/")
  
  #mess.replace('%40',"/")  
  #mess.replace('%3D','=')
  print(me)
  f=AESCipher(key)
  lol=f.decrypt(me)
  return {"message for you": lol}
