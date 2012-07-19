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
