//
//  fourCamera.h
//  testApp
//
//  Created by Jamal Moubarak on 10/30/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import "baseCamera.h"

@interface fourCamera : baseCamera

@property int hoursPerEmp;
@property int totalLaborCost;
@property int empAmount;

-(NSString*)fourChannelEmp;
-(NSString*)fourChannelLabor;
-(NSString*)fourChannelSystem;

@end
