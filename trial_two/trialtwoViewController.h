//
//  trialtwoViewController.h
//  trial_two
//
//  Created by Matthew Swann on 5/29/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface trialtwoViewController : UIViewController<UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UITextField *name_field;

@property (weak, nonatomic) IBOutlet UITextField *number_field;

@property (weak, nonatomic) IBOutlet UILabel *slider_value_label;

@property (weak, nonatomic) IBOutlet UISwitch *left_switch;

@property (weak, nonatomic) IBOutlet UISwitch *right_switch;

@property (weak, nonatomic) IBOutlet UIButton *do_something_button;

- (IBAction)textFieldDoneEditing:(id)sender;

- (IBAction)backgroundTap:(id)sender;

- (IBAction)slider_changed:(UISlider *)sender;

- (IBAction)switch_switched:(UISwitch *)sender;

- (IBAction)toggle_controls:(UISegmentedControl *)sender;

- (IBAction)button_pressed:(UIButton *)sender;

@end
