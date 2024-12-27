# Objective-C ARC Memory Management Issue

This repository demonstrates a subtle memory management issue in Objective-C related to Automatic Reference Counting (ARC).  Specifically, it focuses on scenarios where string objects are repeatedly created and assigned without proper handling of the old objects.  While ARC prevents immediate crashes, this can lead to significant memory bloat over time if not carefully managed.

## Problem

The `bug.m` file shows the problematic code.  Repeated calls to `someMethod` create new `NSString` objects without checking whether there is already a string allocated in the `myString` property. This creates a steady increase in memory use over the lifetime of the object. 

## Solution

The `bugSolution.m` file presents a solution that resolves the memory bloat by adding a null check. The solution checks if a string is already allocated; if so, it releases it before allocating and assigning a new one. This ensures that only one string object is held in memory at any given time. 
