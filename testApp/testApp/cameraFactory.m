//
//  cameraFactory.m
//  testApp
//
//  Created by Jamal Moubarak on 10/29/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import "cameraFactory.h"
#import "baseCamera.h"
#import "fourCamera.h"
#import "eightCamera.h"
#import "sixteenCamera.h"

@implementation cameraFactory

+(baseCamera *)cctvSpecs: (int)camType {
    if(camType == fourCctv) {
        return [[fourCamera alloc] init];
    } else if(camType == eightCctv) {
        return [[eightCamera alloc] init];
    } else if(camType == sixteenCctv) {
        return [[sixteenCamera alloc] init];
    } else return nil;
}


@end
