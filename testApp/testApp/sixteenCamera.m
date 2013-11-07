//
//  sixteenCamera.m
//  testApp
//
//  Created by Jamal Moubarak on 10/30/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import "sixteenCamera.h"

@implementation sixteenCamera

@synthesize hoursPerEmp;
@synthesize totalLaborCost;
@synthesize empAmount;

-(id)init {
    self = [super init];
    if(self !=nil) {
        [self setEmpAmount:6];
        [self setHoursPerEmp:8];
        [self setSysType:@"16 Channel CCTV"];
        [self setAreaLaborCost:0];
        [self setTotalLaborCost:15.50f];
    }
    return self;
};

-(NSString*) sixteenChannelSystem {
    NSString *channelSystem = [[NSString alloc] init];
    channelSystem = [NSString stringWithFormat:@"%@", self.sysType];
    return channelSystem;
}

-(NSString*) sixteenChannelEmp {
    NSString *channelEmp = [[NSString alloc] init];
    channelEmp = [NSString stringWithFormat:@"Employees needed = %d", self.empAmount];
    return channelEmp;
}

-(NSString*) sixteenChannelLabor {
    [self setAreaLaborCost:((empAmount * hoursPerEmp) * totalLaborCost)];
    NSString *channelLabor = [[NSString alloc] init];
    channelLabor = [NSString stringWithFormat:@"Total labor cost = $%.02f", self.areaLaborCost];
    return channelLabor;
}

@end
