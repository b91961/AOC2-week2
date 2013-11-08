//
//  ViewController.h
//  testApp
//
//  Created by Jamal Moubarak on 11/6/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import <UIKit/UIKit.h>

@class cameraFactory;
@class baseCamera;
@class fourCamera;
@class eightCamera;
@class sixteenCamera;
@interface ViewController : UIViewController
{
    int value;
    NSString *sysType;
    NSString *fourLaborLabel;
    NSString *eightLaborLabel;
    NSString *sixteenLaborLabel;
    IBOutlet UIButton *fourButton;
    IBOutlet UIButton *eightButton;
    IBOutlet UIButton *sixteenButton;
    IBOutlet UIStepper *addEmployee;
    IBOutlet UITextField *totalEmployees;
    IBOutlet UISegmentedControl *segControl;
    cameraFactory *CameraFactory;
    fourCamera *FourCamera;
    eightCamera *EightCamera;
    sixteenCamera *SixteenCamera;
}

-(IBAction)onClick:(id)sender;

-(IBAction)onChange:(id)sender;

-(IBAction)onChangeColor:(id)sender;


@end
