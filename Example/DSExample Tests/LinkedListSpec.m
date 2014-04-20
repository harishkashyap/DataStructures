//
//  LinkedListSpec.m
//  DSExample
//
// Copyright (c) 2013 Harish Kashyap
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

#import <Kiwi.h>
#import "LinkedList.h"

SPEC_BEGIN(LinkedListSpec)

describe(@"deleteNode", ^{
    __block LinkedList *linkedList;
    
    beforeAll(^{
        linkedList = [[LinkedList alloc] init];
        for (int i = 0; i < 10; i++) {
            [linkedList insertNode:[NSNumber numberWithInt:i]];
        }
    });
    
    context(@"inserts nodes in serial order", ^{
        it(@"insertNode", ^{
            NSArray *objects = [linkedList allObjects];
            [[[objects objectAtIndex:0] should] equal:[NSNumber numberWithInt:9]];
            [[[objects objectAtIndex:1] should] equal:[NSNumber numberWithInt:8]];
            [[[objects objectAtIndex:2] should] equal:[NSNumber numberWithInt:7]];
            [[[objects objectAtIndex:3] should] equal:[NSNumber numberWithInt:6]];
            [[[objects objectAtIndex:4] should] equal:[NSNumber numberWithInt:5]];
            [[[objects objectAtIndex:5] should] equal:[NSNumber numberWithInt:4]];
            [[[objects objectAtIndex:6] should] equal:[NSNumber numberWithInt:3]];
            [[[objects objectAtIndex:7] should] equal:[NSNumber numberWithInt:2]];
            [[[objects objectAtIndex:8] should] equal:[NSNumber numberWithInt:1]];
            [[[objects objectAtIndex:9] should] equal:[NSNumber numberWithInt:0]];
        });
    });
    
    context(@"deleteNode", ^{
        it(@"deletes nth node", ^{
            [linkedList deleteNode:5];
            NSArray *objects = [linkedList allObjects];
            [[[objects objectAtIndex:4] should] equal:[NSNumber numberWithInt:5]];
            [[[objects objectAtIndex:5] should] equal:[NSNumber numberWithInt:3]];
            [[[objects objectAtIndex:6] should] equal:[NSNumber numberWithInt:2]];
        });
    });
});

SPEC_END