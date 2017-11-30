//
//  Levels.h
//  Tilter
//
//  Created by Julian Lee on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Levels : NSObject

@property (nonatomic, strong) NSString *difficulty;
@property (nonatomic, strong) NSString *level;
@property float bestTime;
@property int size;
@property (nonatomic, strong) NSMutableArray* Maze;

@end
