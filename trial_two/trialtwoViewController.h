//
//  trialtwoViewController.h
//  trial_two
//
//  Created by Matthew Swann on 5/29/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface trialtwoViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *name_field;

@property (weak, nonatomic) IBOutlet UITextField *number_field;

- (IBAction)textFieldDoneEditing:(id)sender;

- (IBAction)backgroundTap:(id)sender;


@end
