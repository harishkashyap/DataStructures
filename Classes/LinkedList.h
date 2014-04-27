//
// LinkedList.h
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

@class LinkedListNode;

/*
 `LinkedList` does basic operations of linked list such as 
 * Insert Node
 * Delete Node
 * Retrieve all objects in the linked List.
 
 ## NSCoding & NSCopying Conformance
 
 Some of the methods in `NodeFactory` may conform to the `NSCoding` and `NSCopying` protocols.
 */

@interface LinkedList : NSObject

@property (nonatomic, strong, readonly) LinkedListNode *head;

///---------------------
/// @name Initialization
///---------------------

/**
 Returns a `LinkedList` object with a Linked List Node.
 */
- (id)init;

///-----------------
/// @name allObjects
///-----------------

/**
 @return Returns all objects contained in the LinkedList
 */
- (NSMutableArray *)allObjects;

///----------------------
/// @name Deleting a Node
///----------------------

/**
 Deletes nth Node in the linked list
 @param Node number that needs to be deleted.
 */
- (void)deleteNode:(int)n;

///------------------------
/// @name Insert a New Node
///------------------------

/**
 Inserts a Node containing the object into the head
 @param object that needs to be inserted into the linked list.
 */
- (void)insertNode:(id)object;

@end
