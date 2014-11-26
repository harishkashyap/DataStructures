//
// NodeFactory.h
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
 `NodeFactory is a class that generates Nodes for Binary Tree, Double Linked List, Linked List
 ## NSCoding & NSCopying Conformance
 
 Some of the methods in `NodeFactory` may conform to the `NSCoding` and `NSCopying` protocols.
 */

@interface NodeFactory : NSObject

///-----------------------------
/// @name Generating Binary Node
///-----------------------------

/**
 `binaryNode` generates a leaf of Binary Tree with left and right nodes that contains an object.
  use the object to add any content you want such as arrays or numbers or strings
 @return The newly generated instance of BinaryNode.
 */
+ (id)binaryNode;

///-----------------------------------------
/// @name Generating Double Linked List Node
///-----------------------------------------

/**
 `doubleLinkedListNode` generates a doubly linked list node containing an object.
 This is a subclass of LinkedListNode with pointer to previous node.
 @return The instance of DoubleLinkedListNode.
 */
+ (id)doubleLinkedListNode;

///----------------------------------
/// @name Generating Linked List Node
///----------------------------------

/**
 `linkedListNode` generates a linked list node containing an object.
 @return The instance of a LinkedListNode.
 */
+ (id)linkedListNode;

@end
