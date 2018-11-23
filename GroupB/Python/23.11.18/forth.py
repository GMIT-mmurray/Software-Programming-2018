from capitals import capitals_dict
import random

def capital_game(question,answer):
    while True:
        guess = input("Whats the capital of : '{}' ?".format(question)).lower() 
        if guess == "exit":
            print("The capital of '{}' is '{}'.".format(question,answer))
            print("Slan")
            break
        elif guess ==(answer).lower():
            print(" Correct - Well done")
        
state = random.choice(list(capitals_dict.keys()))
capital_city = capitals_dict[state]
capital_game(state,capital_city)
