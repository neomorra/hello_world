# a number is prime if it is only divisible by itself and by 1

def prime_check(n):
    if n == 1:
        return "This is a prime number"
    else:
        i = n - 1
    while i > 0:
        if n%i == 0:
            return "This is not a prime number"
            break
        else: i = i - 1
        if i == 1:
            return "This is a prime number"
            break


# test the function

n = int(input("Enter a number"))
prime_check(n)