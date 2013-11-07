//
//  baseCamera.h
//  testApp
//
//  Created by Jamal Moubarak on 10/30/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseCamera : NSObject

{
    int camEnum;
}

typedef enum {
    fourCctv,
    eightCctv,
    sixteenCctv
} camEnum;

@property int empAmount;
@property (nonatomic, retain) NSString *sysType;
@property float areaLaborCost;

-(id)init;

-(NSString*)channelSystem;

-(NSString*)channelEmp;

-(NSString*)channelLabor;

@end
