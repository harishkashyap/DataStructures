//
// NodeFactorySpec.m
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

#import <Kiwi.h>
#import "NodeFactory.h"
#import "BinaryNode.h"
#import "DoubleLinkedListNode.h"
#import "LinkedListNode.h"

SPEC_BEGIN(NodeFactorySpec)

describe(@"binaryNodeSpec", ^{
    it(@"returns an instance of BinaryNode", ^{
        id node = [NodeFactory binaryNode];
        [[[node class] should] equal:[BinaryNode class]];
    });
});

describe(@"doubleLinkedListNodeSpec", ^{
    it(@"returns an instance of DoubleLinkedListNode", ^{
        id node = [NodeFactory doubleLinkedListNode];
        [[[node class] should] equal:[DoubleLinkedListNode class]];
    });
});

describe(@"linkedListNodeSpec", ^{
    it(@"returns an instance of LinkedListNode", ^{
        id node = [NodeFactory linkedListNode];
        [[[node class] should] equal:[LinkedListNode class]];
    });
});

SPEC_END