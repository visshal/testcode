#!/usr/bin/python
#
# @brief This script prints common elements of two lists.
#
# @date 07/19/2012 7:42:43
# 
# @note Part of Inktank Interview Questions.
#
# @author Vishal Mehta

def intersect(list1, list2):
   common_list = [];
   for item in list1:
      if item in list2:
         common_list.append(item);
   return common_list;


l1 = [8,3,4,5,1,9,7];
l2 = [1,2,3,4];

print intersect(l1,l2);

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

