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
        
    }
    return self;
}

@end
