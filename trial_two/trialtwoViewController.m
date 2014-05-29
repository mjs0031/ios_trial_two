//
//  trialtwoViewController.m
//  trial_two
//
//  Created by Matthew Swann on 5/29/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "trialtwoViewController.h"

@interface trialtwoViewController ()

@end

@implementation trialtwoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDoneEditing:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender {
    [self.name_field   resignFirstResponder];
    [self.number_field resignFirstResponder];
}

@end
