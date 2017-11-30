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
        
        MazeArrays *setLevels = [[MazeArrays alloc] init];
        
        self.easyLevels = [NSMutableArray array];
        Levels *levelOne = [[Levels alloc] init];
        levelOne.level = @"Level One";
        levelOne.difficulty = @"Easy";
        levelOne.size = 19;
        levelOne.Maze = [NSMutableArray arrayWithArray:setLevels.LevelOne];
        
        Levels *levelTwo = [[Levels alloc] init];
        levelTwo.level = @"Level Two";
        levelTwo.difficulty = @"Easy";
        levelTwo.size = 19;
        
        [self.easyLevels addObject:levelOne];
        [self.easyLevels addObject:levelTwo];
        
        NSLog(@"Easy levels created and added to array");
        
        self.mediumLevels = [NSMutableArray array];
        Levels *levelThree = [[Levels alloc] init];
        levelThree.level = @"Level Three";
        levelThree.difficulty = @"Medium";
        levelThree.size = 29;
        
        self.mediumLevels = [NSMutableArray array];
        Levels *levelFour = [[Levels alloc] init];
        levelFour.level = @"Level Four";
        levelFour.difficulty = @"Medium";
        levelFour.size = 29;
        
        [self.mediumLevels addObject:levelThree];
        [self.mediumLevels addObject:levelFour];
        
        NSLog(@"Medium levels created and added to array");
        
        self.hardLevels = [NSMutableArray array];
        Levels *levelFive = [[Levels alloc] init];
        levelFive.level = @"Level Five";
        levelFive.difficulty = @"Hard";
        levelFive.size = 39;
        
        self.hardLevels = [NSMutableArray array];
        Levels *levelSix = [[Levels alloc] init];
        levelSix.level = @"Level Six";
        levelSix.difficulty = @"Hard";
        levelFive.size = 39;
        
        [self.hardLevels addObject:levelFive];
        [self.hardLevels addObject:levelSix];
        
        NSLog(@"Hard levels created and added to array");
        
    }
    return self;
}

@end
