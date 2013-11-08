//
//  ViewController.m
//  testApp
//
//  Created by Jamal Moubarak on 11/6/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import "ViewController.h"
#import "CameraFactory.h"
#import "baseCamera.h"
#import "fourCamera.h"
#import "eightCamera.h"
#import "sixteenCamera.h"
#import "InfoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(IBAction)onClick:(id)sender
{
    //4 Channel button
    if ([sender tag] == 0)
    {
        addEmployee.value = 1;
        [fourButton setEnabled:false];
        [eightButton setEnabled:true];
        [sixteenButton setEnabled:true];
        totalEmployees.text = [NSString stringWithFormat:@"Add employees for 4 Channel"];
        totalEmployees.textAlignment = NSTextAlignmentLeft;
        FourCamera = [[fourCamera alloc] init];
        sysType = [FourCamera fourChannelSystem];
    }
    //8 Channel button
    else if ([sender tag] == 1)
    {
        addEmployee.value = 1;
        [fourButton setEnabled:true];
        [eightButton setEnabled:false];
        [sixteenButton setEnabled:true];
        totalEmployees.text = [NSString stringWithFormat:@"Add employees for 8 Channel"];
        totalEmployees.textAlignment = NSTextAlignmentLeft;
        EightCamera = [[eightCamera alloc] init];
        sysType = [EightCamera eightChannelSystem];
    }
    //16 Channel button
    else if ([sender tag] == 2)
    {
        addEmployee.value = 1;
        [fourButton setEnabled:true];
        [eightButton setEnabled:true];
        [sixteenButton setEnabled:false];
        totalEmployees.text = [NSString stringWithFormat:@"Add employees for 16 Channel"];
        totalEmployees.textAlignment = NSTextAlignmentLeft;
        SixteenCamera = [[sixteenCamera alloc] init];
        sysType = [SixteenCamera sixteenChannelSystem];
    }
    //calculation button
    else if ([sender tag] == 3)
    {
        //4 Channel button disabled
        if (fourButton.enabled == false)
        {
            fourLaborLabel = ((value * 8) * 18.00f);
            totalEmployees.text = [NSString stringWithFormat:@"%@ w/ %d emp = $%d.00", sysType, value, fourLaborLabel];
            totalEmployees.textAlignment = NSTextAlignmentLeft;
        }
        //8 Channel button disabled
        else if (eightButton.enabled == false)
        {
            eightLaborLabel = ((value * 8) * 18.00f);
            totalEmployees.text = [NSString stringWithFormat:@"%@ w/ %d emp = $%d.00", sysType, value, eightLaborLabel];
            totalEmployees.textAlignment = NSTextAlignmentLeft;
        }
        //16 Channel button disabled
        else if (sixteenButton.enabled == false)
        {
            sixteenLaborLabel = ((value * 8) * 18.00f);
            totalEmployees.text = [NSString stringWithFormat:@"%@ w/ %d emp = $%d.00", sysType, value, sixteenLaborLabel];
            totalEmployees.textAlignment = NSTextAlignmentLeft;
        }
        //no button selected
        else
        {
            totalEmployees.text = [NSString stringWithFormat:@"Please choose type of system"];
        }
    }
    else if ([sender tag] == 4)
    {
        //show topview page
        InfoViewController *infoView = [[InfoViewController alloc] initWithNibName:@"InfoView" bundle:nil];
        if (infoView !=nil)
        {
            [self presentViewController:infoView animated:TRUE completion:nil];
        }
    } else
    {
        //Do Nothing
    }
}

-(IBAction)onChangeColor:(id)sender
{
    //Change background color
    segControl = (UISegmentedControl *)sender;
    if (segControl !=nil)
    {
        if (segControl.selectedSegmentIndex == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        else if (segControl.selectedSegmentIndex == 1)
        {
            self.view.backgroundColor = [UIColor darkGrayColor];
        }
        else if (segControl.selectedSegmentIndex == 2)
        {
            self.view.backgroundColor = [UIColor colorWithRed:255/255.0f green:180/255.0f blue:247/255.0f alpha:1.0f];
        }
        else if (segControl.selectedSegmentIndex == 3)
        {
            self.view.backgroundColor = [UIColor yellowColor];
        }
    }
}

-(IBAction)onChange:(id)sender
{
    //adjust stepper control
    addEmployee = (UIStepper*)sender;
    if (addEmployee != nil)
    {
        value = addEmployee.value;
        totalEmployees.text = [NSString stringWithFormat:@"%@ w/ %d employees", sysType, value];

        
    }
}


@end
