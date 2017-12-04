//
//  DeviceMotion.m
//  Tilter
//
//  Created by Julian Lee on 04/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "DeviceMotion.h"

@implementation DeviceMotion

//  start collecting data about the motion of the device
-(void)startMotionUpdates{
    //  create a motion manager object
    self.motionManager = [[CMMotionManager alloc] init];
    //  set the interval at which the motion manager should update
    self.motionManager.deviceMotionUpdateInterval = 1.0 / 60.0;
    //  start updating the manager, using a frame referance where the x rotation (rotation about an axis coming out of the screen of the phone) does not really matter
    [self.motionManager startDeviceMotionUpdatesUsingReferenceFrame: CMAttitudeReferenceFrameXArbitraryCorrectedZVertical];
    
}

//  get the motion of the device
//  return in the form (roll, pitch)
-(NSArray*)updateDeviceMotion{
    
    
    CMDeviceMotion *deviceMotion = self.motionManager.deviceMotion;
    
    //  check there is an object assigned to device motion
    if(deviceMotion == nil)
    {
        NSLog(@"Error getting device motion, object not assigned to device");
        return nil;
    }
    
    //  find the attitude of the device, i.e. its state in conpared to the original referance frame
    CMAttitude *attitude = deviceMotion.attitude;
    
    //  get the roll angle of the device
    float roll = attitude.roll;
    
    //  get the pitch angle of the device
    float pitch = attitude.pitch;
    
    //  create array of attitude properties and return it
    NSArray *attitudeArray = [NSArray arrayWithObjects:[NSNumber numberWithFloat:roll], [NSNumber numberWithFloat:pitch], nil];
    return attitudeArray;
    
}

//  update the motion of the player by returning a difference in coordinates according to the orientation of the device.
///  Returned coordinates are in the form (newX, newY)
-(CGPoint)updatePlayerMotionFromCurrentPositionWithCurrentX:(float)currentX CurrentY:(float)currentY{
    
    NSNumber *roll = [[self updateDeviceMotion] objectAtIndex:0];
    NSNumber *pitch = [[self updateDeviceMotion] objectAtIndex:1];
    
    float dX = 2 * [roll floatValue];
    float dY = 2 * [pitch floatValue];
    
    CGFloat newX = currentX + dX;
    CGFloat newY = currentY + dY;
    
    CGPoint newPosition = CGPointMake(newX, newY);
    
    return newPosition;
}

//  stop collecting data about the motion of the device
-(void)stopMotionUpdates{
    
    //  check that the manager has not already stopped collecting data (this is a failsafe)
    if(self.motionManager != nil){
        
        //  stop collecting the data
        [self.motionManager stopDeviceMotionUpdates];

        //  unassign the manager object so it can be checked, and to conserve memory and processing power in the device
        self.motionManager = nil;
        
        
    }
    
}

@end
