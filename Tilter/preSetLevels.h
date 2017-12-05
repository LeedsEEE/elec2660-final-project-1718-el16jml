//
//  preSetLevels.h
//  Tilter
//
//  Created by Julian Lee on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Levels.h"
#import "MazeArrays.h"

@interface preSetLevels : NSObject

@property (strong,nonatomic) NSMutableArray *easyLevels;
@property (strong,nonatomic) NSMutableArray *mediumLevels;
@property (strong,nonatomic) NSMutableArray *hardLevels;
@property (strong,nonatomic) NSUserDefaults *userDefaults;

@end
