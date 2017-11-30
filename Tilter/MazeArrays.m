//
//  MazeArrays.m
//  Tilter
//
//  Created by Julian Lee on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MazeArrays.h"

@implementation MazeArrays

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        self.one = [NSNumber numberWithInt:1];
        self.zero = [NSNumber numberWithInt:0];
        
        self.LevelOneColumnOne =        [NSArray arrayWithObjects:_one, _zero, _one, _one, _one, _one, _one, _zero,  _one, _one, _one, _one, _one, _zero, _one, _zero, _one, _one, _one, nil];
        self.LevelOneColumnTwo =        [NSArray arrayWithObjects:_one, _zero, _one, _zero, _zero, _zero, _one, _zero, _one, _zero, _one, _zero, _one, _zero, _one, _zero, _zero, nil];
        self.LevelOneColumnThree =      [NSArray arrayWithObjects:_one, _zero, _one, _one, _one, _zero, _one, _one, _one, _zero, _one, _zero, _one, _one, _one, _zero, _one, _one, _one, nil];
        self.LevelOneColumnFour =       [NSArray arrayWithObjects:_one, _zero, _zero, _zero, _one, _zero, _zero, _zero, _zero, _zero, _one, _zero, _zero, _zero, _zero, _zero, _zero, _zero, _one, nil];
        self.LevelOneColumnFive =       [NSArray arrayWithObjects:_one, _one, _one, _zero, _one, _one, _one, _one, _one, _zero, _one, _one, _one, _zero,_one, _one, _one, _one, _one, nil];
        self.LevelOneColumnSix =        [NSArray arrayWithObjects:_one, _zero, _zero, _zero, _zero, _zero, _zero, _zero, _one, _zero, _zero, _zero, _one, _zero, _one, _zero, _zero, _zero, _zero, nil];
        self.LevelOneColumnSeven =      [NSArray arrayWithObjects:_one, _one, _one, _one, _one, _one, _one, _zero, _one, _zero, _one, _zero, _one, _one, _one, _zero, _one, _one, _one, nil];
        self.LevelOneColumnEight =      [NSArray arrayWithObjects:_one, _zero, _zero, _zero, _zero, _zero, _one, _zero, _one, _zero, _one, _zero, _zero, _zero, _zero, _zero, _one, _zero, _one, nil];
        self.LevelOneColumnNine =       [NSArray arrayWithObjects:_one, _one, _one, _zero, _one, _one, _one, _zero, _one, _zero, _one, _one, _one, _one, _one, _one, _one, _zero, _one, nil];
        self.LevelOneColumnTen =        [NSArray arrayWithObjects:_zero, _zero, _zero, _zero, _one, _zero, _zero, _zero, _one, _zero, _one, _zero, _zero, _zero, _one, _zero, _zero, _zero, _one, nil];
        self.LevelOneColumnEleven =     [NSArray arrayWithObjects:_one, _one, _one, _zero, _one, _zero, _one, _one, _one, _zero, _one, _zero, _one, _one, _one, _zero, _one, _zero, _one, nil];
        self.LevelOneColumnTwelve =     [NSArray arrayWithObjects:_one, _zero, _one, _zero, _one, _zero, _one, _zero, _zero, _zero, _one, _zero, _one, _zero, _zero, _zero, _one, _zero, _one, nil];
        self.LevelOneColumnThirteen =   [NSArray arrayWithObjects:_one, _zero, _one, _zero, _one, _zero, _one, _one, _one, _zero, _one, _zero, _one, _zero, _one, _one, _one, _one, _one, nil];
        self.LevelOneColumnFourteen =   [NSArray arrayWithObjects:_one, _zero, _one, _zero, _one, _zero, _zero, _zero, _one, _zero, _one, _zero, _one, _zero, _zero, _zero, _zero, _zero, _one, nil];
        self.LevelOneColumnFifteen =    [NSArray arrayWithObjects:_one, _zero, _one, _one, _one, _one, _one, _zero, _one, _zero, _one, _zero, _one,  _one, _one, _one, _one, _zero, _one, nil];
        self.LevelOneColumnSixteen =    [NSArray arrayWithObjects:_one, _zero, _zero, _zero, _zero, _one, _zero, _zero, _zero, _zero, _one, _zero, _one, _zero, _zero, _zero, _zero, _one, _zero, _zero, nil];
        self.LevelOneColumnSeventeen =  [NSArray arrayWithObjects:_one, _one, _one, _zero, _one, _zero, _one, _one, _one, _zero, _one, _zero, _one, _one, _one, _zero, _one,  _one, _one, nil];
        self.LevelOneColumnEighteen =   [NSArray arrayWithObjects:_one, _zero, _one, _zero, _zero, _zero, _one,  _zero, _zero, _zero, _zero, _zero, _one, _zero, _one, _zero, _zero, _zero, _one, nil];
        self.LevelOneColumnNineteen =   [NSArray arrayWithObjects:_one, _zero, _one, _one, _one, _one, _one, _one, _one, _one, _one, _one, _one, _zero, _one, _one, _one, _one, _one, nil];
        
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
        
    }
    return self;
}

@end
