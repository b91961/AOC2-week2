//
//  cameraFactory.h
//  testApp
//
//  Created by Jamal Moubarak on 10/29/13.
//  Copyright (c) 2013 Jamal Moubarak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseCamera.h"
#import "fourCamera.h"
#import "eightCamera.h"
#import "sixteenCamera.h"

@interface cameraFactory : NSObject


+(baseCamera*)cctvSpecs: (int)camType;

@end
