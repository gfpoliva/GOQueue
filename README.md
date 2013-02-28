GOQueue
=======

GOQueue is an implementation of an abstract data type in Objective-C. 

# Using
It is very easy to use.

First of all, you need to import on your file
```  objc

#import "GOQueue.h"
```

You can initialize the queue with item, item and next cell and empty (header cell).
```  objc

- init;
- initWithItem(id)item;
- initWithItem:(id)item andNextCell:(GOQueueCell *)cell;
```

The methods of Queue are:
``` objc

// Enqueues a new item to the queue
- (void)enqueue:(id)item;

// Dequeue, remove and returns the first item of the queue
- (id)dequeue;

// Check if the queue is empty
- (BOOL)isEmpty;

// Returns the first item of the queue without remove it
- (id)peek;

// Check if the queue contains the item
- (BOOL)contains:(id)item;

// Returns the number of items in queue
- (int)numberOfElementsInQueue;
```

# License
---

```

 Permission is hereby granted, free of charge, to any person obtaining a copy of
 this software and associated documentation files (the "Software"), to deal in
 the Software without restriction, including without limitation the rights to
 use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
 of the Software, and to permit persons to whom the Software is furnished to do
 so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 If you happen to meet one of the copyright holders in a bar you are obligated
 to buy them one pint of beer.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 
 ```
 ---
 
# Contact
 
You can contact me at @gabrieloliva_
