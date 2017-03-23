import sys

x = []
for line in open(sys.argv[1]):
   num = int(line)
   x.append(num)

print 'average is', sum(x) / float(len(x))
