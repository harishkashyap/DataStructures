//
// QueueSpec.m
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

#import "Kiwi.h"
#import "Queue.h"

SPEC_BEGIN(QueueSpec)

describe(@"enqueue:object", ^{
    __block Queue *queue;
    
    beforeAll(^{
        queue = [[Queue alloc] init];
        for (int i = 0; i < 10; i++) {
            [queue enqueue:[NSNumber numberWithInt:i]];
        }
    });
    
    context(@"deque", ^{
        it(@"dequeues out pushed nodes", ^{
            id obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:0]];
            obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:1]];
            obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:2]];
            obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:3]];
            obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:4]];
            obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:5]];
            obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:6]];
            obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:7]];
            obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:8]];
            obj = [queue dequeue];
            [[obj should] equal:[NSNumber numberWithInt:9]];
        });
    });
});

SPEC_END