//
//  ViewController.m
//  GOQueueExample
//
//  Created by Gabriel Oliva on 27/02/13.
//  Copyright (c) 2013 Gabriel Oliva. All rights reserved.
//

#import "ViewController.h"
#import "GOQueue.h"
#import "NSMutableArray+GOQueue.h"

@interface ViewController () <UITableViewDataSource>
{
    GOQueue *queue;
}

- (IBAction)enqueueButton;
- (IBAction)dequeueButton;
- (IBAction)numberOfElementsButton;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    queue = [[GOQueue alloc] init];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
    return queue.numberOfElementsInQueue;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    NSMutableArray *queueInAnArray = [[NSMutableArray alloc] initWithGOQueue:queue];
    cell.textLabel.text = [NSString stringWithFormat:@"Number %d: %@", indexPath.row, [queueInAnArray objectAtIndex:indexPath.row]];
    
    return cell;
}

- (IBAction)enqueueButton
{
    NSNumber *random = [NSNumber numberWithInt:arc4random() % 999999];

    [queue enqueue:random];
    
    [self.tableView reloadData];
}

- (IBAction)dequeueButton
{
    [queue dequeue];
    
    [self.tableView reloadData];
}

- (IBAction)numberOfElementsButton
{
    NSString *message = [NSString stringWithFormat:@"%d", queue.numberOfElementsInQueue];
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Number of Elements in Queue"
                                                        message:message
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
    
    [alertView show];
}

@end
