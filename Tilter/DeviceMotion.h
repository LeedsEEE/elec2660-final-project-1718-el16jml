//
//  DeviceMotion.h
//  Tilter
//
//  Created by Julian Lee on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>
#import <UIKit/UIKit.h>

@interface DeviceMotion : NSObject

@property (nonatomic, strong) CMMotionManager * motionManager;

-(void)startMotionUpdates;
-(void)stopMotionUpdates;
-(CGPoint)updatePlayerMotionFromCurrentPositionWithCurrentX:(float)currentX CurrentY:(float)currentY;

@end
