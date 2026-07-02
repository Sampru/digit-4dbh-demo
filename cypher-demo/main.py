
import random
import caesar

alphabet = list("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ")

def ask_text():
    return input("Enter a word to cypher it: ").upper()
    
def ask_key():
    return int(input("Number of displacements (blank for random): ") or random.randint(1, len(alphabet)-1)) 
    

def main():
    print("Select an option:")
    print("1 - Cypher using Caesar")
    print("2 - Cypher using AES")
    print("3 - Execute bruteforce on Caesar")

    choice = input("Enter your choice (1/2/3): ")

    text = ask_text()
    
    if choice == "1":
        key = ask_key()
        caesar.cypher(text, key, alphabet)
    elif choice == "2":
        key = ask_key()
        caesar.decypher(text, key, alphabet)
    elif choice == "3":
        caesar.bruteforce(text, alphabet)
    else:
        print("Invalid option")


if __name__ == "__main__":
    main()