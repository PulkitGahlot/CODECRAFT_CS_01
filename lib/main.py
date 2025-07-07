from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI()

class CipherRequest(BaseModel):
    text: str
    shift: int
    mode: str  # 'encrypt' or 'decrypt'

def caesar_ascii_cipher(text, shift, mode):
    result = ""
    for char in text:
        if mode == 'encrypt':
            result += chr((ord(char) + shift) % 256)
        elif mode == 'decrypt':
            result += chr((ord(char) - shift) % 256)
        else:
            result += char
    return result

@app.post("/cipher")
def process_cipher(req: CipherRequest):
    result = caesar_ascii_cipher(req.text, req.shift, req.mode)
    return {"result": result}
