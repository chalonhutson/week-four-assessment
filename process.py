# This first line opens the file with the data that is within the same directory, and it saves it to a variable called 'log_file' for later use.
log_file = open("um-server-01.txt")

# On the line below is the beginning of a function. The "def" will "define" the function, called sales_reports, which will take in a parameter which is intended to take in the above "log_file".
def sales_reports(log_file):
    # Within the function is a for loop, that goes through every line of the file, and  
    for line in log_file:
        # Within the for loop, it removes the white-space at the end of each line with '.rstrip' and resaves the line as the same variable as a string. 
        line = line.rstrip()
        # The below line defines a variable 'day' and makes it equal to the first three characters of each line string.
        day = line[0:3]
        # If the first three characters is "Tue" it will print the string, and if not, it will do nothing.
        # if day == "Tue":
        # Commented out the Tuesday if statement above, changed it to print the Monday lines below.
        if day == "Mon":    
            print(line)
    

#This line below invokes or calls the function above, passing in the file at the top of the code as the argument.
sales_reports(log_file)
