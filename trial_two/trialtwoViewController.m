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
	
    self.slider_value_label.text = @"50";
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

- (IBAction)slider_changed:(UISlider *)sender {
    int output = lroundf(sender.value);
    self.slider_value_label.text = [NSString stringWithFormat:@"%d", output];
}

- (IBAction)switch_switched:(UISwitch *)sender {
    BOOL toggle = sender.isOn;
    [self.left_switch setOn:toggle animated:YES];
    [self.right_switch setOn:toggle animated:YES];
}

- (IBAction)toggle_controls:(UISegmentedControl *)sender {
    // 0 == switches index
    if (sender.selectedSegmentIndex == 0) {
        self.left_switch.hidden  = NO;
        self.right_switch.hidden = NO;
        self.do_something_button.hidden = YES;
    } else {
        self.left_switch.hidden  = YES;
        self.right_switch.hidden = YES;
        self.do_something_button.hidden = NO;
    }
}

- (IBAction)button_pressed:(UIButton *)sender {
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
        initWithTitle         :@"are you sure?"
        delegate              :self
        cancelButtonTitle     :@"no way!"
        destructiveButtonTitle:@"yes, proceed."
        otherButtonTitles     :nil];
    
    [actionSheet showInView:self.view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    if (buttonIndex != [actionSheet cancelButtonIndex])
    {
        NSString *msg = nil;
        if (self.name_field.text.length > 0)
        
        {
            msg = [NSString stringWithFormat:
                   @"You can breathe easy, %@, everything went OK.",
                   self.name_field.text];
        }
        else
        {
            msg = @"You can breathe easy, everything went OK.";
        }
        
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle     :@"Something was done"
                              message           :msg
                              delegate          :self
                              cancelButtonTitle :@"Phew!"
                              otherButtonTitles :nil];
        [alert show];
        
    }
}

@end
