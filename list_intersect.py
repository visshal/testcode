#!/usr/bin/python
#
# @brief This script prints common elements of two lists.
#
# @date 07/19/2012 7:42:43
# 
# @note Part of Inktank Interview Questions.
#
# @author Vishal Mehta
#
# @Example run:  
# vishal@rocker:~/inktank/inktank_repo$ python list_intersect.py 
# This code gives common elements from given two lists. 
# Enter digits separated by spaces. 
# Enter first list:1 2 3 4
# Enter second list:3 4 5 6
# [3, 4]
#


import sys;

def intersect(list1, list2):
   common_list = [];
   for item in list1:
      if item in list2:
         common_list.append(item);
   return common_list;

print "This code gives common elements from given two lists.";
print "Enter digits separated by spaces.";

# Array initialization.
list1 = [];
list2 = [];

input1 = raw_input("Enter first list:");
list1  = map(int, input1.split());
input2 = raw_input("Enter second list:");
list2  = map(int, input2.split());

# Checking for empty-ness of arrays.
if list1 and list2:
   print intersect(list1,list2);
else:
   print "Empty array(s) detected.";

#####
# Test scenarios.
# 1. When one list is empty.
# 2. When both the list contains unique elements.
# 3. When one list is larger than other list.
# 4. When both the list are empty.
# 5. When both the list contains same elements.
# 6. When one list contains only single element multiple times.
# 7. When both the list contains duplicate elements.
# 8. When both the list contain different data type elements.
# 9. When both the list contain mixed data type elements.

