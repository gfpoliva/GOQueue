/*
 Copyright (c) 2013 Gabriel Oliva. All right reserved
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
*/

#import "GOQueue.h"

@implementation GOQueue


#pragma mark - GOQueue init

- (id)init
{
    self = [super init];
    if (self) {
        _front = [[GOQueueCell alloc] init];
        _back = self.front;
    }
    
    return self;
}

#pragma mark - GOQueue functions

- (BOOL) isEmpty
{
    return self.front == self.back;
}

- (void)enqueue:(id)item
{
    [self.back setNextCell:[[GOQueueCell alloc] initWithItem:item]];
    _back = [_back nextCell];
    _numberOfElements++;
}

- (id)dequeue
{
    id item = nil;
    
    if (self.front != self.back) {
        _front = [self.front nextCell];
        item = [self.front item];
        _numberOfElements--;
    }
    
    return item;
}

- (id)peek
{
    if (self.front != self.back)
        return [self.front.nextCell item];
    
    else
        return nil;
    
}

- (BOOL)contains:(id)item
{
    BOOL found = NO;

    for (GOQueueCell *auxCell = [self.front nextCell]; auxCell != nil && !found; auxCell = [auxCell nextCell])
        found = [auxCell.item isEqual:item];
    
    return found;
}

- (int)numberOfElementsInQueue
{
    return self.numberOfElements;
}



@end
