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
    IBOutlet UISegmentedControl *segControl;
}

-(IBAction)onClick:(id)sender;



-(IBAction)onChangeColor:(id)sender;


@end
