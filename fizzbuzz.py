""" 
Christopher Brunsdon
christopher@brunsdon.co.za
Pythonic Fizzbuzz
"""

def fizz_buzz():
	print '\n'.join([((('' if i%3 else "fizz") + ('' if i%5 else "buzz")) or str(i)) for i in range(1, 101)])

if __name__ == "__main__":
    fizz_buzz()