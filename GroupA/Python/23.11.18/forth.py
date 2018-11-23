from capitals import capitals_dict
import random

def capital_game(state,city):
    while True:
        guess = input("Whats the capital of : '{}' ?".format(state)).lower()
        if guess == "exit":
            print("The capital of '{}' is '{}'.".format(state,city))
            print("Goodbye")
        elif guess == (city).lower():
            print(" Correct ----")

state = random.choice(list(capitals_dict.keys()))
capital_city = capitals_dict[state]
capital_game(state,capital_city)