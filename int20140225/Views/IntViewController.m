//
//  IntViewController.m
//  int20140225
//
//  Created by Chad Kouse on 2/25/14.
//  Copyright (c) 2014 All rights reserved.
//

#import "IntViewController.h"

@interface IntViewController () {
    NSString *word;
}

@end

@implementation IntViewController

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    [self.view viewWithTag:1].hidden = [self.view viewWithTag:2].hidden = YES;
    return YES;
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    NSString *lipsum = @"Lorem ipsum dolor sit amet consectetur adipiscing elit Proin est risus sodales quis risus non";
    NSArray *components = [lipsum componentsSeparatedByString:@" "];
    NSUInteger randomIndex = (NSUInteger) (arc4random() % [components count]);
    word = [components objectAtIndex:randomIndex];
    ((UILabel *)[self.view viewWithTag:1]).text = [NSString stringWithFormat:@"Enter \"%@\" in the text field below and press continue", word];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    [self performSelector:@selector(unhide) withObject:nil afterDelay:0.5];
}

- (void) unhide {
    [self.view viewWithTag:1].hidden = [self.view viewWithTag:2].hidden = NO;
}

-(IBAction) continueButtonPressed:(id)sender {
    NSString *guess = ((UITextField *) [self.view viewWithTag:3]).text;
    if ([guess isEqualToString:word]) {
        [self performSegueWithIdentifier:@"go" sender:self];
    }
}

@end
