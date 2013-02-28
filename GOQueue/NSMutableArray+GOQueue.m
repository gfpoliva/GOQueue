//
//  NSMutableArray+GOQueue.m
//  GOQueueExample
//
//  Created by Gabriel Oliva on 28/02/13.
//  Copyright (c) 2013 Gabriel Oliva. All rights reserved.
//

#import "NSMutableArray+GOQueue.h"

@implementation NSMutableArray (GOQueue)

- (id)initWithGOQueue:(GOQueue *)queue
{
    self = [[super self] init];
    
    if (self) {
        for (GOQueueCell *auxCell = [queue.front nextCell]; auxCell != nil; auxCell = [auxCell nextCell])
        {
            [self addObject:[auxCell item]];
        }
    }
    
    return self;
}

@end
