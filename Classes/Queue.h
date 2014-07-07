//
// Queue.h
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
 `Queue is a class that implements basic Queue operations
 ## NSCoding & NSCopying Conformance
 
 Some of the methods in `Queue` conforms to the `NSCoding` and `NSCopying` protocols.
 */

#import "DoubleLinkedList.h"

@interface Queue : DoubleLinkedList

///---------------------------
/// @name Initialize the Queue
///---------------------------

/**
 @return queue.
 */
- (id)init;

///---------------------------------------
/// @name Enqueue an object into the Queue
///---------------------------------------

/**
 @param object to be enqueued.
 */
- (void)enqueue:(id)object;

///------------------------
/// @name Dequeue the queue
///------------------------

/**
 @return object at the end of the Queue.
 */
- (id)dequeue;

///--------------------------------
/// @name Get contents of the Queue
///--------------------------------

/**
 @return object at the end of the Queue.
 */
- (NSString *)description;

@end
