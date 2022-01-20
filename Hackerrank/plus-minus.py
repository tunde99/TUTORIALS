#!/bin/python3

import math
import os
import random
import re
import sys

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr):
    # Write your code here
    pos = 0
    neg = 0
    zero = 0
    for num in arr:
        if num > 0:
            pos += 1
            # print()
        if num < 0:
            neg += 1
            # print()
        if num == 0:
            zero += 1
    print(f'{pos/n:.6f}')
    print(f'{neg/n:.6f}')
    print(f'{zero/n:.6f}')
            

if __name__ == '__main__':
    
    # n = int(input().strip())
    
    # arr = list(map(int, input().rstrip().split()))
    
    arr = [-4, 3, -9, 0, 4, 1]
    n = len(arr)

    plusMinus(arr)
