import string,random
from time import strftime,localtime

print(strftime("%Y-%m-%d %H:%M:%S", localtime()))
print(strftime("%Y%m%d%H%M%S", localtime()))
a = string.ascii_letters+string.digits
key = []
def getKey():
    key = random.sample(a,8)
    keys = ''.join(key)
    return keys

for i in range(10):
    print(getKey())