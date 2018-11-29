# test.awk
# Basic exercises in awk
# Dakota Wagner 

# Functions must be declared above the BEGIN block
function add(a, b)
{
    return a + b;
}

# recursion is possible in awk
function factorial(num)
{
    if (num == 1)
    {
        return num;
    }
    else
    {
        return (num * factorial(num - 1));
    }
}

# begin statement initializes with the program, kind of like main
BEGIN{

    num1 = 2; # variable declarations in awk
    num2 = 3;
    greeting = "How's it going?";

    # each print statement is a new line
    print "Hello World";

    print greeting;

    print(num1 + num2); # you can do math 
    # available math expressions are: * + / - % ^

    # for loop 
    for (i = 0; i < 5; i++)
    {
        print i;
    }

    # while loop
    j = 0;
    while (j < 5)
    {
        print "Still in the while loop";
        j++;
    }
    print "Exited the while loop.";

    # functions
    print add(1, 2);

    print factorial(5);


}



