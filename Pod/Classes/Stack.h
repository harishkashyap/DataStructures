//
// Stack.h
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
 `Stack is a class that implements basic Stack operations
 ## NSCoding & NSCopying Conformance
 
 Some of the methods in `Stack` conforms to the `NSCoding` and `NSCopying` protocols.
 */

#import "LinkedList.h"

@interface Stack : LinkedList

///-------------------------------------
/// @name Peek into the top of the stack
///-------------------------------------

/**
 @return object at the top of the stack.
 */
- (id)peek;

///--------------------------------------
/// @name Pop the top object of the stack
///--------------------------------------

/**
 @return object at the top of the stack.
 */
- (id)pop;

///---------------------
/// @name Push an object
///---------------------

/**
 @param object that needs to be pushed into the stack.
 */
- (void)push:(id)object;

@end
