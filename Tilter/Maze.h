//
//  Maze.h
//  Tilter
//
//  Created by Julian Lee on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
//  Header file containing all of the variables required to describe the mazes that will be produced.
//

#import <Foundation/Foundation.h>
#import <GameplayKit/GameplayKit.h>

@interface Maze : NSObject

@property int *mazeSize;                                    //  defines the size of the maze to be produced.
@property (nonatomic,strong) GKGridGraph *graph;            //  defines the navigable space of the maze.
@property (nonatomic,strong) GKGridGraphNode *startNode;    //  the start of the maze.
@property (nonatomic,strong) GKGridGraphNode *endNode;      //  the end node of the maze.
@property (nonatomic,strong) NSArray *solution;             //  an array of nodes in start to end order that describes the solution to the maze.
@end
