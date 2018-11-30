from random import randint

flips = 0
trials = 10

for trial in range(0, trials):
    flips += 1  # first flip
    if randint(0, 1) == 0:  # flipped tails on first flip
        while randint(0, 1) == 0:  # keep flipping tails
            print("Keep Getting Tails ",trial)
            flips += 1
        flips += 1  # finally flipped heads
    else:  # otherwise, flipped heads on first flip
        while randint(0, 1) == 1:  # keep flipping heads
            print("Keep Getting Heads ",trial)
            flips += 1
        flips += 1  # finally flipped tails

print("Flips {}, trails {} f/t {} ".format(flips,trials, flips/trials))
