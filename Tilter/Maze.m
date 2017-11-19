//
//  Maze.m
//  Tilter
//
//  Created by Julian Lee on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
//  This file creates a graph of the correct dimensions, when it is created it has no walls, it is simply a plane in which an
//  object can move. The walls to be removed are then retrieved and the objects in the graph array are removed to create areas
//  in which the character cannot move.
//
//  The idea behind this file and the process of creating the maze in this way has come from an example application in the
//  apple developer documentation, which is avaliable at:
//  https://developer.apple.com/library/content/samplecode/Pathfinder_GameplayKit/Introduction/Intro.html#//apple_ref/doc/uid/TP40016461
//  (NOTE: THE EXAMPLE APPLICATION IS WRITTEN IN SWIFT, NOT OBJECTIVE-C)
//

#import "Maze.h"

@implementation Maze

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        //  the following initialises a graph with the correct dimensions, when it is first created it has no walls, the walls will be removed later to create impassable areas.
        
        self.graph = [GKGridGraph graphFromGridStartingAt:(vector_int2){0, 0} width:(int)self.mazeSize height:(int)self.mazeSize diagonalsAllowed:(BOOL)NO];
        
        //  set the start and end nodes of the maze, they must have even x and y coordinates to ensure they are still there when the maze walls are removed.
        
        self.startNode = [self.graph nodeAtGridPosition:(vector_int2) { 0, ( *(self.mazeSize - 1))} ];
        self.endNode = [self.graph nodeAtGridPosition:(vector_int2) { ( *(self.mazeSize - 1)), 0} ];
        
        //  The walls are then removed from the graph and the final maze is created
        
        
        
        
        
        
        
        //find the solution to the maze generated
        
        self.solution = [self.graph findPathFromNode:self.startNode toNode:self.endNode];
                                                                          
    }
    return self;
}

@end
