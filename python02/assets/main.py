import sys

def print_message():
   if sys.version_info[0] < 3:
     print("Hello World! v2")
   else:
     print("Hello World! v3")

if __name__ == '__main__':
    print_message()
