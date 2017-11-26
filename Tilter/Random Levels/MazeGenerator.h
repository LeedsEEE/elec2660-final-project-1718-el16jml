//
//  MazeGenerator.h
//  Tilter
//
//  Created by Julian Lee on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GameplayKit/GameplayKit.h>
#import <GameKit/GameKit.h>
#import "Maze.h"

@interface MazeGenerator : NSObject

@property (nonatomic, strong) Maze* maze;
@property (nonatomic, strong) GKGridGraph *wallNodes;
@property (nonatomic, strong) NSArray<GKGridGraphNode *> *searchStack;
@property (nonatomic, strong) NSArray<GKGridGraphNode *> *visitedNodes;
@property NSUInteger randomInt;
@property (nonatomic, strong) NSArray<GKGridGraphNode *> *maybeWalls;
@property int dXReturn;
@property int dYReturn;

- (NSArray<GKGridGraphNode*>*) getPotentialWalls: (GKGridGraph*) potentialWalls;
- (int) getDX: (int) dx;
- (int) getDY: (int) dy;
- (NSUInteger)nextIntWithUpperBound:(NSUInteger)upperBound;

- (GKGridGraphNode*) mazeWallsForRemoval;

- (int) getDirection;

@end
