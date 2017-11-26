//
//  MazeGenerator.m
//  Tilter
//
//  Created by Julian Lee on 24/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MazeGenerator.h"

@implementation MazeGenerator

    //  initialise the enum
    typedef NS_ENUM (NSInteger, Direction) {
        left,
        down,
        right,
        up
    };

- (NSUInteger)nextIntWithUpperBound:(NSUInteger)upperBound{
    self.randomInt = GKRandomSource.sharedRandom.nextInt;
    return self.randomInt;
}
    
- (int) getDX: (int) dx {
    NSUInteger x = self.randomInt;
    switch (x) {
        case up:
        case down: self.dXReturn = 0;
            break;
        case left: self.dXReturn = -2;
            break;
        case right: self.dXReturn = 2;
            break;
        default: break;
    }
    return self.dXReturn;
}
    
- (int) getDY: (int) dy {
    NSUInteger y = self.randomInt;
    switch (y) {
        case up:
        case down: self.dYReturn = 0;
            break;
        case left: self.dYReturn = -2;
            break;
        case right: self.dYReturn = 2;
            break;
        default: break;
    }
    return self.dYReturn;
}

- (NSArray<GKGridGraphNode*>*) getPotentialWalls: (GKGridGraph*) potentialWalls{
    
    GKGridGraph * graphNodes = self.maze.graph;
    
    for (int* x = 0; x < self.maze.mazeSize; x++){
        for (int* y = 0; y < self.maze.mazeSize; y++){
            GKGridGraphNode *currentNode = [graphNodes nodeAtGridPosition:(vector_int2){*x,*y}];
            
            if ( *x % 2 == 1 || *y % 2 == 1 ){
                [self.maybeWalls arrayByAddingObject:currentNode];
            }
        }
    }
    return self.maybeWalls;
}


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.maze = _maze;
    }
    return self;
}

- (GKGridGraphNode*) mazeWallsForRemoval{
    [self.wallNodes addNodes:self.maybeWalls];
    
    [self.searchStack arrayByAddingObject:self.maze.startNode];
    [self.visitedNodes arrayByAddingObject:self.maze.startNode];
    
    GKGridGraphNode *topNode = self.searchStack.lastObject;
    
    return nil;
}












@end
