//
//  InfoViewController.m
//  testApp
//
//  Created by Jamal Moubarak on 11/7/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import "InfoViewController.h"
#import "ViewController.h"

@implementation InfoViewController

-(IBAction)onClose:(id)sender
{
    if ([sender tag] == 5)
    {
        InfoViewController *infoView = [[InfoViewController alloc] initWithNibName:@"InfoView" bundle:nil];
        if (infoView !=nil)
        {
            [self dismissViewControllerAnimated:TRUE completion:nil];
        }
    } else
    {
        //Do Nothing
    }
}

@end
