import random

class Caesar:

    def __init__(self, alphabet=-1):
        if alphabet == -1:
            self.alphabet = list("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ")
        else:
            self.alphabet = alphabet
        self.spin_key(0)
        

    def _transform_text(self, text, wheel):
        new_text = ""
    
        for l in text:  
            try:
                cl = wheel[self.alphabet.index(l)]
                new_text += cl
            except ValueError:
                new_text += l

        return new_text
    
    def spin_key(self, key=-1):
        if key == -1:
            key = int(input("Number of displacements (blank for random): ") or random.randint(1, len(self.alphabet)-1))
        self.key = key
        self.cypher = self.alphabet[self.key:] + self.alphabet[:self.key]
        self.decypher = self.alphabet[-self.key:] + self.alphabet[:-self.key]
    
    def cypher_text(self, text=-1):
        if text == -1:
           text = input("Enter a word to cypher it: ").upper()
        return self._transform_text(text, self.cypher)
    
    def decypher_text(self, text=-1):
        if text == -1:
           text = input("Enter a word to decypher it: ").upper()
        return self._transform_text(text, self.decypher)



    
def bruteforce(caesar):
    text = input("Enter a word to bruteforce it: ").upper()
    for key in range(1, len(caesar.alphabet)):
        caesar.spin_key(key)
        print(f"Trying key '{key}', output is '{caesar.decypher_text(text)}'")

def menu():
    print("Select an option:")
    print("1 - Cypher using Caesar")
    print("2 - Decypher using Caesar")
    print("3 - Execute bruteforce on Caesar")

    choice = input("Enter your choice (1/2/3): ")

    caesar = Caesar()
    
    if choice == "1":
        caesar.spin_key()
        print(f"The output is: {caesar.cypher_text()}")
    elif choice == "2":
        caesar.spin_key()
        print(f"The output is: {caesar.decypher_text()}")
    elif choice == "3":
        bruteforce(caesar)
    else:
        print("Invalid option")


if __name__ == "__main__":
    menu()