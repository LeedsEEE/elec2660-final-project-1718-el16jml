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
}

- (void)didMoveToView:(SKView *)view {
    
    MazeArrays *mazeArrays = [[MazeArrays alloc] init];
    FirstViewController *viewController= [[FirstViewController alloc] init];
    
    [self.viewController viewDidLoad];
    
    //  initialise node and set its properties
    node = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake(20, 20)];
    node.strokeColor = [UIColor blackColor];
    node.fillColor = [UIColor blackColor];
    
    NSLog(@"Node size, line colour and fill colour set");
    
    //  set the maze size
    self.mazeSize = 19; //viewController.currentLevel.size;
    
    NSLog(@"Maze size set");
    NSLog(@"Maze size is: %d", viewController.currentLevel.size);
    
    //  Set the cell size
    NSInteger cellSize = (self.scene.size.width)/self.mazeSize;
    
    NSLog(@"Cell size set");
    
    // get the maze array
    /****************************************************************************************
     
     
            MAZE CANNOT BE ASSIGNED, FIRSTVIEW CONTROLLER FLE IS CALLED AFTER THIS ONE
        ASSIGNING A VALUE TO MAZE AND MAZE.SIZE WILL FIX ISSUE AND ALLOW PROGRAM TO EXECUTE
     
     
     ****************************************************************************************/
    
    self.maze = self.viewController.currentLevel.Maze;
    //self.maze = self.mazeArrays.LevelOne;
    
    
    //  cycle through the matrix indicies and create a node at the corresponding position if there is a one at that index
    for (int x = 0; x < self.mazeSize; x++){
        NSLog(@"Change of X coordinate");
        for (int y = 0; y < self.mazeSize; y++){
            NSLog(@"Change of Y coordinate");
            NSLog(@"Current node: x: %i y: %i", x, y);
            /****************************************************************************************
             
             
                                    IF STATEMENT NEEDS FIXING TO COMPARE VALUES
                                NO VALUES ARE ASSIGNED TO SELF.MAZE OR MAZEARRAYS.ONE
             
             
             ****************************************************************************************/
            if (self.maze[x][y] == mazeArrays.one){
                NSLog(@"If statement passed");
                SKShapeNode *currentNode = [node copy];
                currentNode.position = CGPointMake((x * cellSize) + (0.5 * cellSize), (y * cellSize) + (0.5 * cellSize));
                [self addChild:currentNode];
                NSLog(@"Node added");
                
            }
        }
    }
    NSLog(@"For loop Completed");
}

@end
