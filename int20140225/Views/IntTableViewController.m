//
// Created by Chad Kouse on 2/25/14.
// Copyright (c) 2014 All rights reserved.
//

#import "IntTableViewController.h"


@implementation IntTableViewController {

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"testCell"];
    return cell;
}

@end