//
//  preSetLevels.m
//  Tilter
//
//  Created by Julian Lee on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "preSetLevels.h"

@implementation preSetLevels

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        self.easyLevels = [NSMutableArray array];
        Levels *levelOne = [[Levels alloc] init];
        levelOne.level = @"Level One";
        levelOne.difficulty = @"Easy";
        
        Levels *levelTwo = [[Levels alloc] init];
        levelTwo.level = @"Level Two";
        levelTwo.difficulty = @"Easy";
        
        [self.easyLevels addObject:levelOne];
        [self.easyLevels addObject:levelTwo];
        
        self.mediumLevels = [NSMutableArray array];
        Levels *levelThree = [[Levels alloc] init];
        levelThree.level = @"Level Three";
        levelThree.difficulty = @"Medium";
        
        self.mediumLevels = [NSMutableArray array];
        Levels *levelFour = [[Levels alloc] init];
        levelFour.level = @"Level Four";
        levelFour.difficulty = @"Medium";
        
        [self.mediumLevels addObject:levelThree];
        [self.mediumLevels addObject:levelFour];
        
        self.hardLevels = [NSMutableArray array];
        Levels *levelFive = [[Levels alloc] init];
        levelFive.level = @"Level Five";
        levelFive.difficulty = @"Hard";
        
        self.hardLevels = [NSMutableArray array];
        Levels *levelSix = [[Levels alloc] init];
        levelSix.level = @"Level Six";
        levelSix.difficulty = @"Hard";
        
        [self.hardLevels addObject:levelFive];
        [self.hardLevels addObject:levelSix];
        
    }
    return self;
}

@end
