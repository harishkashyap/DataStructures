//
// Queue.m
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

#import "Queue.h"
#import "DoubleLinkedListNode.h"

@interface Queue()

@property (nonatomic, strong) DoubleLinkedListNode *tail;

@end

@implementation Queue

- (id)init {
    if (self = [super init]) {
        _tail = [[DoubleLinkedListNode alloc] init];
        _tail.next = nil;
        _tail.prev = nil;
    }
    return self;
}

- (void)enqueue:(id)object {
    if (object) {
        DoubleLinkedListNode *newNode = [[DoubleLinkedListNode alloc] init];
        DoubleLinkedListNode *currentNode = (DoubleLinkedListNode *)self.head.next;
        
        newNode.object = object;
        
        if (self.head.next == nil) {
            self.tail.next = newNode;
        }
        newNode.prev = (DoubleLinkedListNode *)self.head;
        newNode.next = currentNode;
        self.head.next = newNode;
        currentNode.prev = newNode;
    }
}

- (id)dequeue {
    if (self.head.next) {
        DoubleLinkedListNode *node = (DoubleLinkedListNode *)self.tail.next;
        DoubleLinkedListNode *prevNode = node.prev;
        id object = node.object;
        node.object = nil;
        node.next = nil;
        prevNode.next = nil;
        self.tail.next = prevNode;
        return object;
    }
    return nil;
}

- (NSString *)description {
    NSMutableString *queueContent = [[NSMutableString alloc] initWithString:@"Contents of Queue\n"];
    for (id object in [self allObjects]) {
        if ([object respondsToSelector:@selector(description)]) {
            [queueContent appendString:[object description]];
            [queueContent appendString:@"\n"];
        }else {
            [queueContent appendString:@"Implement description method in the objects"];
        }
    }
    return queueContent;
}

@end
