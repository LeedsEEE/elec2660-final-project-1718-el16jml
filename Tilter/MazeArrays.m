//
//  MazeArrays.m
//  Tilter
//
//  Created by Julian Lee on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
//  This file creates the mazes by creating arrays of arrays, they are then sent to "preSetLevels" and assigned to level objects

#import "MazeArrays.h"

@implementation MazeArrays

- (instancetype)init
{
    self = [super init];
    if (self) {
        
#pragma mark Level One
        
        self.LevelOneColumnOne =        [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelOneColumnTwo =        [NSArray arrayWithObjects:@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelOneColumnThree =      [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelOneColumnFour =       [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelOneColumnFive =       [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelOneColumnSix =        [NSArray arrayWithObjects:@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,nil];
        self.LevelOneColumnSeven =      [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,nil];
        self.LevelOneColumnEight =      [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,nil];
        self.LevelOneColumnNine =       [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelOneColumnTen =        [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,nil];
        self.LevelOneColumnEleven =     [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,nil];
        self.LevelOneColumnTwelve =     [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,nil];
        self.LevelOneColumnThirteen =   [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,nil];
        self.LevelOneColumnFourteen =   [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,nil];
        self.LevelOneColumnFifteen =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelOneColumnSixteen =    [NSArray arrayWithObjects:@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelOneColumnSeventeen =  [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,nil];
        self.LevelOneColumnEighteen =   [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelOneColumnNineteen =   [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,nil];
        
        NSLog(@"Level One columns created");
        NSLog(@"Level One Coloumn one count: %lu", (unsigned long)self.LevelOneColumnOne.count);
        NSLog(@"Level One Coloumn two count: %lu", (unsigned long)self.LevelOneColumnTwo.count);
        NSLog(@"Level One Coloumn three count: %lu", (unsigned long)self.LevelOneColumnThree.count);
        NSLog(@"Level One Coloumn four count: %lu", (unsigned long)self.LevelOneColumnFour.count);
        NSLog(@"Level One Coloumn five count: %lu", (unsigned long)self.LevelOneColumnFive.count);
        NSLog(@"Level One Coloumn six count: %lu", (unsigned long)self.LevelOneColumnSix.count);
        NSLog(@"Level One Coloumn seven count: %lu", (unsigned long)self.LevelOneColumnSeven.count);
        NSLog(@"Level One Coloumn eight count: %lu", (unsigned long)self.LevelOneColumnEight.count);
        NSLog(@"Level One Coloumn nine count: %lu", (unsigned long)self.LevelOneColumnNine.count);
        NSLog(@"Level One Coloumn ten count: %lu", (unsigned long)self.LevelOneColumnTen.count);
        NSLog(@"Level One Coloumn eleven count: %lu", (unsigned long)self.LevelOneColumnEleven.count);
        NSLog(@"Level One Coloumn twelve count: %lu", (unsigned long)self.LevelOneColumnTwelve.count);
        NSLog(@"Level One Coloumn thirteen count: %lu", (unsigned long)self.LevelOneColumnThirteen.count);
        NSLog(@"Level One Coloumn fourteen count: %lu", (unsigned long)self.LevelOneColumnFourteen.count);
        NSLog(@"Level One Coloumn fifteen count: %lu", (unsigned long)self.LevelOneColumnFifteen.count);
        NSLog(@"Level One Coloumn sixteen count: %lu", (unsigned long)self.LevelOneColumnSixteen.count);
        NSLog(@"Level One Coloumn seventeen count: %lu", (unsigned long)self.LevelOneColumnSeventeen.count);
        NSLog(@"Level One Coloumn eighteen count: %lu", (unsigned long)self.LevelOneColumnEighteen.count);
        NSLog(@"Level One Coloumn nineteen count: %lu", (unsigned long)self.LevelOneColumnNineteen.count);
        
        self.LevelOne = [NSArray arrayWithObjects:self.LevelOneColumnOne, self.LevelOneColumnTwo, self.LevelOneColumnThree, self.LevelOneColumnFour, self.LevelOneColumnFive, self.LevelOneColumnSix, self.LevelOneColumnSeven, self.LevelOneColumnEight, self.LevelOneColumnNine, self.LevelOneColumnTen, self.LevelOneColumnEleven, self.LevelOneColumnTwelve, self.LevelOneColumnThirteen, self.LevelOneColumnFourteen, self.LevelOneColumnFifteen, self.LevelOneColumnSixteen, self.LevelOneColumnSeventeen, self.LevelOneColumnEighteen, self.LevelOneColumnNineteen, nil];
    
         
        NSLog(@"Level one columns added to array");
        
#pragma mark Level Two
        
        self.LevelTwoColumnOne =        [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelTwoColumnTwo =        [NSArray arrayWithObjects:@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,nil];
        self.LevelTwoColumnThree =      [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,nil];
        self.LevelTwoColumnFour =       [NSArray arrayWithObjects:@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,nil];
        self.LevelTwoColumnFive =       [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelTwoColumnSix =        [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,nil];
        self.LevelTwoColumnSeven =      [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,nil];
        self.LevelTwoColumnEight =      [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,nil];
        self.LevelTwoColumnNine =       [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelTwoColumnTen =        [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelTwoColumnEleven =     [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelTwoColumnTwelve =     [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,nil];
        self.LevelTwoColumnThirteen =   [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,nil];
        self.LevelTwoColumnFourteen =   [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,nil];
        self.LevelTwoColumnFifteen =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelTwoColumnSixteen =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,nil];
        self.LevelTwoColumnSeventeen =  [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelTwoColumnEighteen =   [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,nil];
        self.LevelTwoColumnNineteen =   [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,nil];
        
        NSLog(@"Level Two columns created");
        NSLog(@"Level Two Coloumn one count: %lu", (unsigned long)self.LevelTwoColumnOne.count);
        NSLog(@"Level Two Coloumn two count: %lu", (unsigned long)self.LevelTwoColumnTwo.count);
        NSLog(@"Level Two Coloumn three count: %lu", (unsigned long)self.LevelTwoColumnThree.count);
        NSLog(@"Level Two Coloumn four count: %lu", (unsigned long)self.LevelTwoColumnFour.count);
        NSLog(@"Level Two Coloumn five count: %lu", (unsigned long)self.LevelTwoColumnFive.count);
        NSLog(@"Level Two Coloumn six count: %lu", (unsigned long)self.LevelTwoColumnSix.count);
        NSLog(@"Level Two Coloumn seven count: %lu", (unsigned long)self.LevelTwoColumnSeven.count);
        NSLog(@"Level Two Coloumn eight count: %lu", (unsigned long)self.LevelTwoColumnEight.count);
        NSLog(@"Level Two Coloumn nine count: %lu", (unsigned long)self.LevelTwoColumnNine.count);
        NSLog(@"Level Two Coloumn ten count: %lu", (unsigned long)self.LevelTwoColumnTen.count);
        NSLog(@"Level Two Coloumn eleven count: %lu", (unsigned long)self.LevelTwoColumnEleven.count);
        NSLog(@"Level Two Coloumn twelve count: %lu", (unsigned long)self.LevelTwoColumnTwelve.count);
        NSLog(@"Level Two Coloumn thirteen count: %lu", (unsigned long)self.LevelTwoColumnThirteen.count);
        NSLog(@"Level Two Coloumn fourteen count: %lu", (unsigned long)self.LevelTwoColumnFourteen.count);
        NSLog(@"Level Two Coloumn fifteen count: %lu", (unsigned long)self.LevelTwoColumnFifteen.count);
        NSLog(@"Level Two Coloumn sixteen count: %lu", (unsigned long)self.LevelTwoColumnSixteen.count);
        NSLog(@"Level Two Coloumn seventeen count: %lu", (unsigned long)self.LevelTwoColumnSeventeen.count);
        NSLog(@"Level Two Coloumn eighteen count: %lu", (unsigned long)self.LevelTwoColumnEighteen.count);
        NSLog(@"Level Two Coloumn nineteen count: %lu", (unsigned long)self.LevelTwoColumnNineteen.count);
        
        self.LevelTwo = [NSArray arrayWithObjects:self.LevelTwoColumnOne, self.LevelTwoColumnTwo, self.LevelTwoColumnThree, self.LevelTwoColumnFour, self.LevelTwoColumnFive, self.LevelTwoColumnSix, self.LevelTwoColumnSeven, self.LevelTwoColumnEight, self.LevelTwoColumnNine, self.LevelTwoColumnTen, self.LevelTwoColumnEleven, self.LevelTwoColumnTwelve, self.LevelTwoColumnThirteen, self.LevelTwoColumnFourteen, self.LevelTwoColumnFifteen, self.LevelTwoColumnSixteen, self.LevelTwoColumnSeventeen, self.LevelTwoColumnEighteen, self.LevelTwoColumnNineteen, nil];
        
        NSLog(@"Level two columns added to array");
        
#pragma mark Level Three
        
        self.LevelThreeColumnOne =        [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,nil];
        self.LevelThreeColumnTwo =        [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelThreeColumnThree =      [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelThreeColumnFour =       [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,nil];
        self.LevelThreeColumnFive =       [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelThreeColumnSix =        [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,nil];
        self.LevelThreeColumnSeven =      [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,nil];
        self.LevelThreeColumnEight =      [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,nil];
        self.LevelThreeColumnNine =       [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,nil];
        self.LevelThreeColumnTen =        [NSArray arrayWithObjects:@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,nil];
        self.LevelThreeColumnEleven =     [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,nil];
        self.LevelThreeColumnTwelve =     [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,nil];
        self.LevelThreeColumnThirteen =   [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelThreeColumnFourteen =   [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelThreeColumnFifteen =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,nil];
        self.LevelThreeColumnSixteen =    [NSArray arrayWithObjects:@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelThreeColumnSeventeen =  [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,nil];
        self.LevelThreeColumnEighteen =   [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,nil];
        self.LevelThreeColumnNineteen =   [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelThreeColumnTwenty =     [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelThreeColumnTwentyOne =        [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelThreeColumnTwentyTwo =        [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelThreeColumnTwentyThree =      [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelThreeColumnTwentyFour =       [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelThreeColumnTwentyFive =       [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelThreeColumnTwentySix =        [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,nil];
        self.LevelThreeColumnTwentySeven =      [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,nil];
        self.LevelThreeColumnTwentyEight =      [NSArray arrayWithObjects:@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,nil];
        self.LevelThreeColumnTwentyNine =       [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,nil];

        NSLog(@"Level Three columns created");
        NSLog(@"Level Three Coloumn one count: %lu", (unsigned long)self.LevelThreeColumnOne.count);
        NSLog(@"Level Three Coloumn two count: %lu", (unsigned long)self.LevelThreeColumnTwo.count);
        NSLog(@"Level Three Coloumn three count: %lu", (unsigned long)self.LevelThreeColumnThree.count);
        NSLog(@"Level Three Coloumn four count: %lu", (unsigned long)self.LevelThreeColumnFour.count);
        NSLog(@"Level Three Coloumn five count: %lu", (unsigned long)self.LevelThreeColumnFive.count);
        NSLog(@"Level Three Coloumn six count: %lu", (unsigned long)self.LevelThreeColumnSix.count);
        NSLog(@"Level Three Coloumn seven count: %lu", (unsigned long)self.LevelThreeColumnSeven.count);
        NSLog(@"Level Three Coloumn eight count: %lu", (unsigned long)self.LevelThreeColumnEight.count);
        NSLog(@"Level Three Coloumn nine count: %lu", (unsigned long)self.LevelThreeColumnNine.count);
        NSLog(@"Level Three Coloumn ten count: %lu", (unsigned long)self.LevelThreeColumnTen.count);
        NSLog(@"Level Three Coloumn eleven count: %lu", (unsigned long)self.LevelThreeColumnEleven.count);
        NSLog(@"Level Three Coloumn twelve count: %lu", (unsigned long)self.LevelThreeColumnTwelve.count);
        NSLog(@"Level Three Coloumn thirteen count: %lu", (unsigned long)self.LevelThreeColumnThirteen.count);
        NSLog(@"Level Three Coloumn fourteen count: %lu", (unsigned long)self.LevelThreeColumnFourteen.count);
        NSLog(@"Level Three Coloumn fifteen count: %lu", (unsigned long)self.LevelThreeColumnFifteen.count);
        NSLog(@"Level Three Coloumn sixteen count: %lu", (unsigned long)self.LevelThreeColumnSixteen.count);
        NSLog(@"Level Three Coloumn seventeen count: %lu", (unsigned long)self.LevelThreeColumnSeventeen.count);
        NSLog(@"Level Three Coloumn eighteen count: %lu", (unsigned long)self.LevelThreeColumnEighteen.count);
        NSLog(@"Level Three Coloumn nineteen count: %lu", (unsigned long)self.LevelThreeColumnNineteen.count);
        NSLog(@"Level Three Coloumn twenty count: %lu", (unsigned long)self.LevelThreeColumnTwenty.count);
        NSLog(@"Level Three Coloumn twenty one count: %lu", (unsigned long)self.LevelThreeColumnOne.count);
        NSLog(@"Level Three Coloumn twenty two count: %lu", (unsigned long)self.LevelThreeColumnTwo.count);
        NSLog(@"Level Three Coloumn twenty three count: %lu", (unsigned long)self.LevelThreeColumnThree.count);
        NSLog(@"Level Three Coloumn twenty four count: %lu", (unsigned long)self.LevelThreeColumnFour.count);
        NSLog(@"Level Three Coloumn twenty five count: %lu", (unsigned long)self.LevelThreeColumnFive.count);
        NSLog(@"Level Three Coloumn twenty six count: %lu", (unsigned long)self.LevelThreeColumnSix.count);
        NSLog(@"Level Three Coloumn twenty seven count: %lu", (unsigned long)self.LevelThreeColumnSeven.count);
        NSLog(@"Level Three Coloumn twenty eight count: %lu", (unsigned long)self.LevelThreeColumnEight.count);
        NSLog(@"Level Three Coloumn twenty nine count: %lu", (unsigned long)self.LevelThreeColumnNine.count);

        self.LevelThree = [NSArray arrayWithObjects:self.LevelThreeColumnOne, self.LevelThreeColumnTwo, self.LevelThreeColumnThree, self.LevelThreeColumnFour, self.LevelThreeColumnFive, self.LevelThreeColumnSix, self.LevelThreeColumnSeven, self.LevelThreeColumnEight, self.LevelThreeColumnNine, self.LevelThreeColumnTen, self.LevelThreeColumnEleven, self.LevelThreeColumnTwelve, self.LevelThreeColumnThirteen, self.LevelThreeColumnFourteen, self.LevelThreeColumnFifteen, self.LevelThreeColumnSixteen, self.LevelThreeColumnSeventeen, self.LevelThreeColumnEighteen, self.LevelThreeColumnNineteen, self.LevelThreeColumnTwenty, self.LevelThreeColumnTwentyOne, self.LevelThreeColumnTwentyTwo, self.LevelThreeColumnTwentyThree, self.LevelThreeColumnTwentyFour, self.LevelThreeColumnTwentyFive, self.LevelThreeColumnTwentySix, self.LevelThreeColumnTwentySeven, self.LevelThreeColumnTwentyEight, self.LevelThreeColumnTwentyNine, nil];
        
        NSLog(@"Level three columns added to array");
        
#pragma mark Level Four
        
        self.LevelFourColumnOne =        [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,nil];
        self.LevelFourColumnTwo =        [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelFourColumnThree =      [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,nil];
        self.LevelFourColumnFour =       [NSArray arrayWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFourColumnFive =       [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFourColumnSix =        [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,nil];
        self.LevelFourColumnSeven =      [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,nil];
        self.LevelFourColumnEight =      [NSArray arrayWithObjects:@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFourColumnNine =       [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFourColumnTen =        [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelFourColumnEleven =     [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelFourColumnTwelve =     [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFourColumnThirteen =   [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFourColumnFourteen =   [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,nil];
        self.LevelFourColumnFifteen =    [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,nil];
        self.LevelFourColumnSixteen =    [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelFourColumnSeventeen =  [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFourColumnEighteen =   [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFourColumnNineteen =   [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelFourColumnTwenty =     [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,nil];
        self.LevelFourColumnTwentyOne =        [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelFourColumnTwentyTwo =        [NSArray arrayWithObjects:@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFourColumnTwentyThree =       [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,nil];
        self.LevelFourColumnTwentyFour =       [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFourColumnTwentyFive =       [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelFourColumnTwentySix =        [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,nil];
        self.LevelFourColumnTwentySeven =      [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelFourColumnTwentyEight =      [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,nil];
        self.LevelFourColumnTwentyNine =       [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        
        NSLog(@"Level Four columns created");
        NSLog(@"Level Four Coloumn one count: %lu", (unsigned long)self.LevelFourColumnOne.count);
        NSLog(@"Level Four Coloumn two count: %lu", (unsigned long)self.LevelFourColumnTwo.count);
        NSLog(@"Level Four Coloumn Three count: %lu", (unsigned long)self.LevelFourColumnThree.count);
        NSLog(@"Level Four Coloumn four count: %lu", (unsigned long)self.LevelFourColumnFour.count);
        NSLog(@"Level Four Coloumn five count: %lu", (unsigned long)self.LevelFourColumnFive.count);
        NSLog(@"Level Four Coloumn six count: %lu", (unsigned long)self.LevelFourColumnSix.count);
        NSLog(@"Level Four Coloumn seven count: %lu", (unsigned long)self.LevelFourColumnSeven.count);
        NSLog(@"Level Four Coloumn eight count: %lu", (unsigned long)self.LevelFourColumnEight.count);
        NSLog(@"Level Four Coloumn nine count: %lu", (unsigned long)self.LevelFourColumnNine.count);
        NSLog(@"Level Four Coloumn ten count: %lu", (unsigned long)self.LevelFourColumnTen.count);
        NSLog(@"Level Four Coloumn eleven count: %lu", (unsigned long)self.LevelFourColumnEleven.count);
        NSLog(@"Level Four Coloumn twelve count: %lu", (unsigned long)self.LevelFourColumnTwelve.count);
        NSLog(@"Level Four Coloumn thirteen count: %lu", (unsigned long)self.LevelFourColumnThirteen.count);
        NSLog(@"Level Four Coloumn fourteen count: %lu", (unsigned long)self.LevelFourColumnFourteen.count);
        NSLog(@"Level Four Coloumn fifteen count: %lu", (unsigned long)self.LevelFourColumnFifteen.count);
        NSLog(@"Level Four Coloumn sixteen count: %lu", (unsigned long)self.LevelFourColumnSixteen.count);
        NSLog(@"Level Four Coloumn seventeen count: %lu", (unsigned long)self.LevelFourColumnSeventeen.count);
        NSLog(@"Level Four Coloumn eighteen count: %lu", (unsigned long)self.LevelFourColumnEighteen.count);
        NSLog(@"Level Four Coloumn nineteen count: %lu", (unsigned long)self.LevelFourColumnNineteen.count);
        NSLog(@"Level Four Coloumn twenty count: %lu", (unsigned long)self.LevelFourColumnTwenty.count);
        NSLog(@"Level Four Coloumn twenty one count: %lu", (unsigned long)self.LevelFourColumnTwentyOne.count);
        NSLog(@"Level Four Coloumn twenty two count: %lu", (unsigned long)self.LevelFourColumnTwentyTwo.count);
        NSLog(@"Level Four Coloumn twenty three count: %lu", (unsigned long)self.LevelFourColumnTwentyThree.count);
        NSLog(@"Level Four Coloumn twenty four count: %lu", (unsigned long)self.LevelFourColumnTwentyFour.count);
        NSLog(@"Level Four Coloumn twenty five count: %lu", (unsigned long)self.LevelFourColumnTwentyFive.count);
        NSLog(@"Level Four Coloumn twenty six count: %lu", (unsigned long)self.LevelFourColumnTwentySix.count);
        NSLog(@"Level Four Coloumn twenty seven count: %lu", (unsigned long)self.LevelFourColumnTwentySeven.count);
        NSLog(@"Level Four Coloumn twenty eight count: %lu", (unsigned long)self.LevelFourColumnTwentyEight.count);
        NSLog(@"Level Four Coloumn twenty nine count: %lu", (unsigned long)self.LevelFourColumnTwentyNine.count);
        

        
        self.LevelFour = [NSArray arrayWithObjects:self.LevelFourColumnOne, self.LevelFourColumnTwo, self.LevelFourColumnThree, self.LevelFourColumnFour, self.LevelFourColumnFive, self.LevelFourColumnSix, self.LevelFourColumnSeven, self.LevelFourColumnEight, self.LevelFourColumnNine, self.LevelFourColumnTen, self.LevelFourColumnEleven, self.LevelFourColumnTwelve, self.LevelFourColumnThirteen, self.LevelFourColumnFourteen, self.LevelFourColumnFifteen, self.LevelFourColumnSixteen, self.LevelFourColumnSeventeen, self.LevelFourColumnEighteen, self.LevelFourColumnNineteen, self.LevelFourColumnTwenty, self.LevelFourColumnTwentyOne, self.LevelFourColumnTwentyTwo, self.LevelFourColumnTwentyThree, self.LevelFourColumnTwentyFour, self.LevelFourColumnTwentyFive, self.LevelFourColumnTwentySix, self.LevelFourColumnTwentySeven, self.LevelFourColumnTwentyEight, self.LevelFourColumnTwentyNine, nil];
        
#pragma mark Level Five
        
        self.LevelFiveColumnOne =    [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,nil];
        self.LevelFiveColumnTwo =    [NSArray arrayWithObjects:@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,nil];
        self.LevelFiveColumnThree =      [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,nil];
        self.LevelFiveColumnFour =       [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFiveColumnFive =       [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelFiveColumnSix =    [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,nil];
        self.LevelFiveColumnSeven =      [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,nil];
        self.LevelFiveColumnEight =      [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,nil];
        self.LevelFiveColumnNine =       [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFiveColumnTen =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,nil];
        self.LevelFiveColumnEleven =     [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelFiveColumnTwelve =     [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,nil];
        self.LevelFiveColumnThirteen =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,nil];
        self.LevelFiveColumnFourteen =    [NSArray arrayWithObjects:@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,nil];
        self.LevelFiveColumnFifteen =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFiveColumnSixteen =    [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelFiveColumnSeventeen =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,nil];
        self.LevelFiveColumnEighteen =    [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFiveColumnNineteen =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFiveColumnTwenty =    [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,nil];
        self.LevelFiveColumnTwentyOne =    [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,nil];
        self.LevelFiveColumnTwentyTwo =    [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,nil];
        self.LevelFiveColumnTwentyThree =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,nil];
        self.LevelFiveColumnTwentyFour =    [NSArray arrayWithObjects:@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,nil];
        self.LevelFiveColumnTwentyFive =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFiveColumnTwentySix =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelFiveColumnTwentySeven =    [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelFiveColumnTwentyEight =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelFiveColumnTwentyNine =    [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFiveColumnThirty =    [NSArray arrayWithObjects:@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,nil];
        self.LevelFiveColumnThirtyOne =    [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,nil];
        self.LevelFiveColumnThirtyTwo =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFiveColumnThirtyThree =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFiveColumnThirtyFour =    [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,nil];
        self.LevelFiveColumnThirtyFive =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelFiveColumnThirtySix =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelFiveColumnThirtySeven =    [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelFiveColumnThirtyEight =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,nil];
        self.LevelFiveColumnThirtyNine =    [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,nil];
        
        self.LevelFive = [NSArray arrayWithObjects:self.LevelFiveColumnOne, self.LevelFiveColumnTwo, self.LevelFiveColumnThree, self.LevelFiveColumnFour, self.LevelFiveColumnFive, self.LevelFiveColumnSix, self.LevelFiveColumnSeven, self.LevelFiveColumnEight, self.LevelFiveColumnNine, self.LevelFiveColumnTen, self.LevelFiveColumnEleven, self.LevelFiveColumnTwelve, self.LevelFiveColumnThirteen, self.LevelFiveColumnFourteen, self.LevelFiveColumnFifteen, self.LevelFiveColumnSixteen, self.LevelFiveColumnSeventeen, self.LevelFiveColumnEighteen, self.LevelFiveColumnNineteen, self.LevelFiveColumnTwenty, self.LevelFiveColumnTwentyOne, self.LevelFiveColumnTwentyTwo, self.LevelFiveColumnTwentyThree, self.LevelFiveColumnTwentyFour, self.LevelFiveColumnTwentyFive, self.LevelFiveColumnTwentySix, self.LevelFiveColumnTwentySeven, self.LevelFiveColumnTwentyEight, self.LevelFiveColumnTwentyNine, self.LevelFiveColumnThirty, self.LevelFiveColumnThirtyOne, self.LevelFiveColumnThirtyTwo, self.LevelFiveColumnThirtyThree, self.LevelFiveColumnThirtyFour, self.LevelFiveColumnThirtyFive, self.LevelFiveColumnThirtySix, self.LevelFiveColumnThirtySeven, self.LevelFiveColumnThirtyEight, self.LevelFiveColumnThirtyNine, nil];
        
#pragma mark Level Six

        self.LevelSixColumnOne =        [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,nil];
        self.LevelSixColumnTwo =        [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelSixColumnThree =      [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelSixColumnFour =       [NSArray arrayWithObjects:@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,nil];
        self.LevelSixColumnFive =       [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelSixColumnSix =        [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,nil];
        self.LevelSixColumnSeven =      [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelSixColumnEight =      [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelSixColumnNine =       [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelSixColumnTen =        [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelSixColumnEleven =     [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,nil];
        self.LevelSixColumnTwelve =     [NSArray arrayWithObjects:@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,nil];
        self.LevelSixColumnThirteen =    [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,nil];
        self.LevelSixColumnFourteen =    [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,nil];
        self.LevelSixColumnFifteen =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,nil];
        self.LevelSixColumnSixteen =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,nil];
        self.LevelSixColumnSeventeen =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,nil];
        self.LevelSixColumnEighteen =    [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,nil];
        self.LevelSixColumnNineteen =    [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelSixColumnTwenty =    [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,nil];
        self.LevelSixColumnTwentyOne =    [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,nil];
        self.LevelSixColumnTwentyTwo =    [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,nil];
        self.LevelSixColumnTwentyThree =    [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,nil];
        self.LevelSixColumnTwentyFour =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,nil];
        self.LevelSixColumnTwentyFive =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,nil];
        self.LevelSixColumnTwentySix =    [NSArray arrayWithObjects:@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,nil];
        self.LevelSixColumnTwentySeven =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,nil];
        self.LevelSixColumnTwentyEight =    [NSArray arrayWithObjects:@0,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,nil];
        self.LevelSixColumnTwentyNine =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,nil];
        self.LevelSixColumnThirty =    [NSArray arrayWithObjects:@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,nil];
        self.LevelSixColumnThirtyOne =    [NSArray arrayWithObjects:@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelSixColumnThirtyTwo =    [NSArray arrayWithObjects:@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@0,@0,@1,nil];
        self.LevelSixColumnThirtyThree =    [NSArray arrayWithObjects:@1,@1,@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,nil];
        self.LevelSixColumnThirtyFour =    [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,nil];
        self.LevelSixColumnThirtyFive =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,nil];
        self.LevelSixColumnThirtySix =    [NSArray arrayWithObjects:@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@0,@0,@0,@0,@1,nil];
        self.LevelSixColumnThirtySeven =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@0,@1,@1,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,@0,@1,@0,@1,@0,@1,@1,@1,nil];
        self.LevelSixColumnThirtyEight =    [NSArray arrayWithObjects:@1,@0,@0,@0,@1,@0,@1,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@0,@0,@1,@0,@0,@0,@0,@0,@1,@0,@1,@0,@1,@0,@1,@0,@1,@0,@0,nil];
        self.LevelSixColumnThirtyNine =    [NSArray arrayWithObjects:@1,@1,@1,@0,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@1,@0,@1,@0,@1,@1,@1,@0,@1,@1,@1,nil];
        
        self.LevelSix = [NSArray arrayWithObjects:self.LevelSixColumnOne, self.LevelSixColumnTwo, self.LevelSixColumnThree, self.LevelSixColumnFour, self.LevelSixColumnFive, self.LevelSixColumnSix, self.LevelSixColumnSeven, self.LevelSixColumnEight, self.LevelSixColumnNine, self.LevelSixColumnTen, self.LevelSixColumnEleven, self.LevelSixColumnTwelve, self.LevelSixColumnThirteen, self.LevelSixColumnFourteen, self.LevelSixColumnFifteen, self.LevelSixColumnSixteen, self.LevelSixColumnSeventeen, self.LevelSixColumnEighteen, self.LevelSixColumnNineteen, self.LevelSixColumnTwenty, self.LevelSixColumnTwentyOne, self.LevelSixColumnTwentyTwo, self.LevelSixColumnTwentyThree, self.LevelSixColumnTwentyFour, self.LevelSixColumnTwentyFive, self.LevelSixColumnTwentySix, self.LevelSixColumnTwentySeven, self.LevelSixColumnTwentyEight, self.LevelSixColumnTwentyNine, self.LevelSixColumnThirty, self.LevelSixColumnThirtyOne, self.LevelSixColumnThirtyTwo, self.LevelSixColumnThirtyThree, self.LevelSixColumnThirtyFour, self.LevelSixColumnThirtyFive, self.LevelSixColumnThirtySix, self.LevelSixColumnThirtySeven, self.LevelSixColumnThirtyEight, self.LevelSixColumnThirtyNine, nil];

    }
    return self;
}

@end
