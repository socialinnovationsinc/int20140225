//
// Created by Chad Kouse on 2/25/14.
// Copyright (c) 2014 All rights reserved.
//

#import "IntTableViewController.h"


@implementation IntTableViewController {
    UITableViewCell *_cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *objects = [[NSBundle mainBundle] loadNibNamed:@"IntCustomTableCell" owner:self options:nil];
    for (NSObject *object in objects) {
        if ([object isKindOfClass:[UITableViewCell class]]) {
            _cell = (UITableViewCell *)object;
        }
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return _cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return _cell.bounds.size.height;
}

@end