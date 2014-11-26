//
// LinkedList.m
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

#import "LinkedList.h"
#import "LinkedListNode.h"

@implementation LinkedList

- (id)init {
    if (self = [super init]) {
        _head = [[LinkedListNode alloc] init];
        _head.next = nil;
    }
    return self;
}

- (NSMutableArray *)allObjects {
    LinkedListNode *node = self.head;
    NSMutableArray *objectArray = [[NSMutableArray alloc] init];
    while (node.next != nil) {
        if (node.object) {
            [objectArray addObject:node.object];
        }
        node = node.next;
    }
    [objectArray addObject:node.object];
    return objectArray;
}

- (void)deleteNode:(int)n {
    LinkedListNode *node = self.head;
    int i = 1;
    while ((node.next != nil)&&(i++ < n)){
        node = node.next;
    }
    LinkedListNode *nextNode = node.next;
    node.next = nextNode.next;
    nextNode.object = nil;
    nextNode.next = nil;
    nextNode = nil;
}

- (void)insertNode:(id)object {
    if (object) {
        LinkedListNode *newNode = [[LinkedListNode alloc] init];
        newNode.object = object;
        newNode.next = self.head.next;
        self.head.next = newNode;
    }
}

@end
