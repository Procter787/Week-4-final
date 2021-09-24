log_file = open("um-server-01.txt") #linking the server that will be used into the vs code so that it can be used.


def sales_reports(log_file): #The def is how you create function in python.
    for line in log_file: #this is where the FOR and IN loop are being set up withing the function.
        line = line.rstrip()# the .rstrip command is being used to tell what will be inserted into the line.
        day = line[0:3] # this line is just to show what the day is equal to.
        if day == "Mon":# IF statement that is telling the function to do something if the day == tuesday.
            print(line) # what will be printed after the IF statement.


sales_reports(log_file) #used to run the acutal function and all that comes within the function.
