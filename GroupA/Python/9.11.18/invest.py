def invest(amount, rate, time):
    print("Starting Principle Amount: €{} Rate: {}%  Time: {} Years".format(amount,rate,time))
    for t in range(1,time+1):
        interest = amount*rate
        amount = amount + interest
#       amount = amount * (1+rate)        
        print("Year {}: Amount €{} ".format(t,amount))
    print()    
        
invest(100,.05,8)
invest(2000,.025,5)
              
            
    