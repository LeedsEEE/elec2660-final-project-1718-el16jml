//
//  BestTimes.h
//  Tilter
//
//  Created by Julian Lee on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Levels.h"

@interface BestTimes : NSObject

@property float levelOneBestTime;
@property float levelTwoBestTime;
@property float levelThreeBestTime;
@property float levelFourBestTime;
@property float levelFiveBestTime;
@property float levelSixBestTime;
@property (nonatomic, strong) NSUserDefaults* userDefaults;

-(void) initialiseDefaults;
-(void) setBestTimeForLevel:(NSString*)Level asTime:(float)time;
-(float) getBestTimeForLevel:(NSString*)Level;

@end
