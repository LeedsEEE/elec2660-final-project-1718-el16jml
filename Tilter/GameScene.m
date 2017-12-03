//
//  GameScene.m
//  Tilter
//
//  Created by Julian Lee on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene{
    SKShapeNode *node;
    SKLabelNode *levelTitleLabel;
    SKLabelNode *levelDifficultyLabel;
}

- (void)didMoveToView:(SKView *)view {

    // get the labels
    levelTitleLabel = (SKLabelNode *)[self childNodeWithName:@"levelLabel"];
    levelDifficultyLabel = (SKLabelNode *)[self childNodeWithName:@"difficultyLabel"];
    
    //  set the labels
    levelTitleLabel.text = GetCurrentLevel();
    levelDifficultyLabel.text = GetCurrentDifficulty();
    
    //  get the maze
    self.maze = GetCurrentMaze();

    //  get the maze size
    self.mazeSize = GetCurrentMazeSize();
    
    NSLog(@"Maze size set as: %d", self.mazeSize);
    
    //  Set the cell size
    NSInteger cellSize = 650/self.mazeSize;
    
    NSLog(@"Cell size set as: %ld", (long)cellSize);
    
    //  initialise node and set its properties
    node = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake(cellSize, cellSize)];
    node.strokeColor = [UIColor blackColor];
    node.fillColor = [UIColor blackColor];
    
    NSLog(@"Node size, line colour and fill colour set");
    
    //  cycle through the matrix indicies and create a node at the corresponding position if there is a one at that index
    for (int x = 0; x < self.mazeSize; x++){
        //NSLog(@"Change of X coordinate");
        for (int y = 0; y < self.mazeSize; y++){
            //NSLog(@"Change of Y coordinate");
            //NSLog(@"Current node: x: %i y: %i", x, y);
            if ([self.maze[x][y]  isEqual: @0]){
                NSLog(@"If statement passed");
                SKShapeNode *currentNode = [node copy];
                currentNode.position = CGPointMake(((x * cellSize) + (0.5 * cellSize) - 320), ((y * cellSize) + (0.5 * cellSize) - 320));
                [self addChild:currentNode];
                NSLog(@"Node added");
                
            }
        }
    }
    NSLog(@"For loop Completed");
}



@end
