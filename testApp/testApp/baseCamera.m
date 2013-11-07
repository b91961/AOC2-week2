//
//  baseCamera.m
//  testApp
//
//  Created by Jamal Moubarak on 10/30/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import "baseCamera.h"

@implementation baseCamera

@synthesize empAmount;
@synthesize sysType;
@synthesize areaLaborCost;

-(id)init {
    self = [super init];
    if(self !=nil) {
        empAmount = 0;
        [self setSysType:nil];
        [self setAreaLaborCost:15.50f];
    }
    return self;
};

-(NSString*) channelSystem {
    NSString *channelSystem = [[NSString alloc] init];
    channelSystem = [NSString stringWithFormat:@"%@", self.sysType];
    return channelSystem;
}

-(NSString*) channelEmp {
    NSString *channelEmp = [[NSString alloc] init];
    channelEmp = [NSString stringWithFormat:@"Employees needed = %d", self.empAmount];
    return channelEmp;
}

-(NSString*) channelLabor {
    NSString *channelLabor = [[NSString alloc] init];
    channelLabor = [NSString stringWithFormat:@"Total labor cost = $%.02f", self.areaLaborCost];
    return channelLabor;
}

@end
