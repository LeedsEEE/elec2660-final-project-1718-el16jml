//
//  GameScene.m
//  Tilter
//
//  Created by Julian Lee on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void) generateNodes{
    
    //  initialise an array for sprites for the maze, each coodinate in the maze will have a sprite in it.
    //  The following process will create all of the y objects in each column before moving to the next column.

    
    /*
     
     
    for (int *x  = 0; x < self.maze.mazeSize; x++){
        for (int *y = 0; y <self.maze.mazeSize; y++){
            
            [self.spriteNodes insertObject:[GKGridGraphNode nodeWithGridPosition:(vector_int2){*x,*y}] atIndex:<#(NSUInteger)#>];
        }
    }
     
     
     */
    
    self.parentNode = (SKSpriteNode*)[self childNodeWithName:@"maze"];
    float tempFloat = [[NSNumber numberWithInt:*(self.maze.mazeSize)] floatValue];             //convert the integer size to a float in order to be able to use it in the next line
    CGFloat cellDimensions = (self.parentNode.size.height) / tempFloat;
    
    //remove all of the nodes from the previous puzzle
    [self.parentNode removeAllChildren];
    
    //create a sprite for all of the nodes already created
    self.graphNodes = [[GKGridGraph alloc] initWithNodes:self.maze.graph.nodes];
    
    
    //  loop through the sprite nods and create a node at each point, set the size, colour and position.
    for (int *x  = 0; x < self.maze.mazeSize; x++) {
        for (int *y = 0; y <self.maze.mazeSize; y++){
        
            // set the size and colour of the node created in the scene, a conversion to a core graphics size must be made first
            CGSize size = CGSizeMake(cellDimensions, cellDimensions);
            if ( x == 0 && y == 0 ){
                self.mazeNode = [SKSpriteNode spriteNodeWithColor:[UIColor greenColor] size:size];
            }
            else if ( x == self.maze.mazeSize - 1 && y == self.maze.mazeSize - 1){
                self.mazeNode = [SKSpriteNode spriteNodeWithColor:[UIColor redColor] size:size];
            }
            else {
                self.mazeNode = [SKSpriteNode spriteNodeWithColor:[UIColor blackColor] size:size];
            }
            
            //  set the anchor point of the sprite and then move away from that to set the node's position
            //  the core graphics functions will only take floats, so the x and y coordinates must be converted to floats in order to use them.
            self.mazeNode.anchorPoint = CGPointMake(0.0, 0.0);
            float xFloat = [[NSNumber numberWithInt:*x] floatValue];
            float yFloat = [[NSNumber numberWithInt:*y] floatValue];
            self.mazeNode.position = CGPointMake( xFloat * cellDimensions , yFloat * cellDimensions);

            //  add the node to the parent node
            [self.parentNode addChild:self.mazeNode];
            
            //  add the created node to the array of sprite nodes so we can refer to it later
            [self.spriteNodesColumns insertObject:self.mazeNode atIndex:*y];
        }
        [self.spriteNodes insertObject:self.spriteNodesColumns atIndex:*x];
    }
}

- (void) createMaze{
    
    //create a maze object
    self.maze = [[Maze alloc] init];
    
    //generateNodes();
    
    
}
@end
