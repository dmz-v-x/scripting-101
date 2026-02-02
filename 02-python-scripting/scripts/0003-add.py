import sys

if len(sys.argv) != 3:
  print("Usage: python script.py <arg1> <arg2>")
  sys.exit(1)

try:
  num1 = float(sys.argv[1])
  num2 = float(sys.argv[2])
except ValueError:
  print("Please enter valid numbers")
  sys.exit(1)

total = num1 + num2
print(f"Sum of {num1} and {num2} is {total}")
