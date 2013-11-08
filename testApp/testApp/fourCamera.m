//
//  fourCamera.m
//  testApp
//
//  Created by Jamal Moubarak on 10/30/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import "fourCamera.h"

@implementation fourCamera

@synthesize hoursPerEmp;
@synthesize totalLaborCost;
@synthesize empAmount;

-(id)init {
    self = [super init];
    if(self !=nil) {
        [self setEmpAmount:2];
        [self setHoursPerEmp:8];
        [self setSysType:@"4 Channel"];
        [self setAreaLaborCost:0];
        [self setTotalLaborCost:15.50f];
    }
    return self;
};

-(NSString*) fourChannelSystem {
    NSString *channelSystem = [[NSString alloc] init];
    channelSystem = [NSString stringWithFormat:@"%@", self.sysType];
    return channelSystem;
}

-(NSString*) fourChannelEmp {
    NSString *channelEmp = [[NSString alloc] init];
    channelEmp = [NSString stringWithFormat:@"Employees needed = %d", self.empAmount];
    return channelEmp;
}

-(NSString*) fourChannelLabor {
    [self setAreaLaborCost:((empAmount * hoursPerEmp) * totalLaborCost)];
    NSString *channelLabor = [[NSString alloc] init];
    channelLabor = [NSString stringWithFormat:@"$%.02f", self.areaLaborCost];
    return channelLabor;
}

@end
