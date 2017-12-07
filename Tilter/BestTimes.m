//
//  BestTimes.m
//  Tilter
//
//  Created by Julian Lee on 07/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
//  This class deals with the updatin of the best time for each level, the NSUserDefaults object holds the data that is to be
//  permanently stored on the phone and is the main way that these times are updated.
//

#import "BestTimes.h"

@implementation BestTimes

-(void)initialiseDefaults{
    _userDefaults = [NSUserDefaults standardUserDefaults];
}

-(void) setBestTimeForLevel:(NSString *)Level asTime:(float)time{
   
    if([Level isEqualToString:@"Level One"]){
        self.levelOneBestTime = time;
        [self.userDefaults setFloat:time forKey:@"Level One Best Time"];
    }
    else if([Level isEqualToString:@"Level Two"]){
        self.levelTwoBestTime = time;
    }
    else if([Level isEqualToString:@"Level Three"]){
        self.levelThreeBestTime = time;
    }
    else if([Level isEqualToString:@"Level Four"]){
        self.levelFourBestTime = time;
    }
    else if([Level isEqualToString:@"Level Five"]){
        self.levelFiveBestTime = time;
    }
    else if([Level isEqualToString:@"Level Six"]){
        self.levelSixBestTime = time;
    }
    else{
        NSLog(@"Error in file: BestTimes.m \n Error setting best time");
    }
    
}

-(float) getBestTimeForLevel:(NSString *)Level{
    
    if([Level isEqualToString:@"Level One"]){
        //float time = [self.userDefaults floatForKey:@"Level One Best Time"];
        return self.levelOneBestTime;
    }
    else if([Level isEqualToString:@"Level Two"]){
        return self.levelTwoBestTime;
    }
    else if([Level isEqualToString:@"Level Three"]){
        return self.levelThreeBestTime;
    }
    else if([Level isEqualToString:@"Level Four"]){
        return self.levelFourBestTime;
    }
    else if([Level isEqualToString:@"Level Five"]){
        return self.levelFiveBestTime;
    }
    else if([Level isEqualToString:@"Level Six"]){
        return self.levelSixBestTime;
    }
    else{
        NSLog(@"Error in file: BestTimes.m \n Error getting best time");
        return 0.0;
    }
    
}

@end
