//
// DataStructureFactory.h
// DSExample
//
// Copyright (c) 2013 Harish Kashyap (http://www.thevoyagenius.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

/*
 `DataStructureFactory` is a class that generates DataStructures for:
 - Doubly Linked List
 - Linked List
 - Queue
 - Stack
 
 ## NSCoding & NSCopying Conformance
 
 Some of the methods in `NodeFactory` may conform to the `NSCoding` and `NSCopying` protocols.
 */

#import "DataStructures.h"

@interface DataStructureFactory : NSObject

///------------------------------------
/// @name Generating Doubly Linked List
///------------------------------------

/**
 `doubleLinkedList` generates a Doubly Linked List with a head and tail pointer
 @return The newly generated instance of DoubleLinkedList.
 */
+ (DoubleLinkedList *)doubleLinkedList;

///-----------------------------
/// @name Generating Linked List
///-----------------------------

/**
 `linkedList` generates a  Linked List with pointer with a head pointer
 @return The newly generated instance of LinkedList.
 */
+ (LinkedList *)linkedList;

///-----------------------
/// @name Generating Queue
///-----------------------

/**
 `queue` generates a Queue.
 @return The newly generated instance of Queue.
 */
+ (Queue *)queue;

///-----------------------
/// @name Generating Stack
///-----------------------

/**
 `stack` generates a stack.
 @return The newly generated instance of Stack.
 */
+ (Stack *)stack;

@end
