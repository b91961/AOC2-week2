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
    if ([sender tag] == 4)
    {
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
    segControl = (UISegmentedControl *)sender;
    if (segControl !=nil)
    {
        if (segControl.selectedSegmentIndex == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        else if (segControl.selectedSegmentIndex == 1)
        {
            self.view.backgroundColor = [UIColor colorWithRed:225/255.0f green:225/255.0f blue:225/255.0f alpha:1.0f];
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

@end
