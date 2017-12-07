//
//  preSetLevels.m
//  Tilter
//
//  Created by Julian Lee on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
//  Creates al of the level objects, assigning level names, difficulties and sizes to each. Each obkect is also give a maze array from "MazeArrays"

#import "preSetLevels.h"

@implementation preSetLevels

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        MazeArrays *setLevels = [[MazeArrays alloc] init];
        BestTimes *bestTimes = [[BestTimes alloc] init];
        
        self.easyLevels = [NSMutableArray array];
        Levels *levelOne = [[Levels alloc] init];
        levelOne.level = @"Level One";
        levelOne.difficulty = @"Easy";
        levelOne.size = 19;
        levelOne.Maze = [NSMutableArray arrayWithArray:setLevels.LevelOne];
        levelOne.bestTime = [bestTimes.userDefaults floatForKey:@"Level One"];
        
        
        Levels *levelTwo = [[Levels alloc] init];
        levelTwo.level = @"Level Two";
        levelTwo.difficulty = @"Easy";
        levelTwo.size = 19;
        levelTwo.Maze = [NSMutableArray arrayWithArray:setLevels.LevelTwo];
        //levelTwo.bestTime = self.levelTwoBestTime;
        
        [self.easyLevels addObject:levelOne];
        [self.easyLevels addObject:levelTwo];
        
        NSLog(@"Easy levels created and added to array");
        
        self.mediumLevels = [NSMutableArray array];
        Levels *levelThree = [[Levels alloc] init];
        levelThree.level = @"Level Three";
        levelThree.difficulty = @"Medium";
        levelThree.size = 29;
        levelThree.Maze = [NSMutableArray arrayWithArray:setLevels.LevelThree];
        //levelThree.bestTime = self.levelThreeBestTime;
        
        Levels *levelFour = [[Levels alloc] init];
        levelFour.level = @"Level Four";
        levelFour.difficulty = @"Medium";
        levelFour.size = 29;
        levelFour.Maze = [NSMutableArray arrayWithArray:setLevels.LevelFour];
        //levelFour.bestTime = self.levelFourBestTime;
        
        [self.mediumLevels addObject:levelThree];
        [self.mediumLevels addObject:levelFour];
        
        NSLog(@"Medium levels created and added to array");
        
        self.hardLevels = [NSMutableArray array];
        Levels *levelFive = [[Levels alloc] init];
        levelFive.level = @"Level Five";
        levelFive.difficulty = @"Hard";
        levelFive.size = 39;
        //levelFive.bestTime = self.levelFiveBestTime;
        levelFive.Maze = [NSMutableArray arrayWithArray:setLevels.LevelFive];
        
        Levels *levelSix = [[Levels alloc] init];
        levelSix.level = @"Level Six";
        levelSix.difficulty = @"Hard";
        levelSix.size = 39;
        //levelSix.bestTime = self.levelSixBestTime;
        levelSix.Maze = [NSMutableArray arrayWithArray:setLevels.LevelSix];
        
        [self.hardLevels addObject:levelFive];
        [self.hardLevels addObject:levelSix];
        
        NSLog(@"Hard levels created and added to array");
    
    }
    return self;
}

@end
