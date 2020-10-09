from binascii import hexlify

message = ""
key = ""

while len(message) != 16:
    message = input("Please enter your message as exactly 16 characters: ")
while len(key) != 32:
    key = input("Please enter your key as exactly 32 characters: ")


hex_message = hexlify(message.encode('utf-8'))
hex_key = hexlify(key.encode('utf-8'))

print("Hexadecimal converted message: " + str(hex_message))
print("Hexadecimal converted key: " + str(hex_key))

