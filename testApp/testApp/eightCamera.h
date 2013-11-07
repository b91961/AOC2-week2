//
//  eightCamera.h
//  testApp
//
//  Created by Jamal Moubarak on 10/30/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import "baseCamera.h"

@interface eightCamera : baseCamera

@property int hoursPerEmp;
@property int totalLaborCost;
@property int empAmount;

-(NSString*)eightChannelEmp;
-(NSString*)eightChannelLabor;
-(NSString*)eightChannelSystem;

@end
