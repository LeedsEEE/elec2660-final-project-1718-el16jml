//
//  RandomLevelsScene.m
//  Tilter
//
//  Created by Julian Lee on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "RandomLevelsScene.h"

@implementation RandomLevelsScene{
    SKShapeNode *node;
    SKShapeNode *player;
    SKShapeNode *start;
    SKShapeNode *end;
    SKPhysicsBody *nodePhysics;
    SKPhysicsBody *playerPhysics;
}

- (void)didMoveToView:(SKView *)view {
    
    CGFloat height = 19.0;
    CGSize size = CGSizeMake(height, height);
    
    //self.maze = [NSArray arrayWithObject:[self.mazeGenerator generateMazeOfSize:size]];
    self.mazeSize = height;
    
    self.cellSize = 640.0/self.mazeSize;
    
    //  initialise the node and set its properties
    node = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake(self.cellSize, self.cellSize)];
    node.strokeColor = [UIColor blackColor];
    node.fillColor = [UIColor blackColor];
    
    //  set the Physics for the nodes
    nodePhysics = [SKPhysicsBody bodyWithRectangleOfSize:CGSizeMake(self.cellSize, self.cellSize)];
    //node does not move
    [nodePhysics setDynamic:NO];
    //node sould have collision detection
    [nodePhysics setUsesPreciseCollisionDetection:YES];
    //  assign physics to the node
    node.physicsBody = nodePhysics;
    
    for (int x = 0; x < self.mazeSize; x++){
        //  NSLog(@"Change of X coordinate");
        for (int y = 0; y < self.mazeSize; y++){
            //  NSLog(@"Change of Y coordinate");
            //  NSLog(@"Current node: x: %i y: %i", x, y);
            if ([self.maze[x][y]  isEqual: @0]){
                //NSLog(@"If statement passed");
                SKShapeNode *currentNode = [node copy];
                currentNode.position = CGPointMake(((x * self.cellSize) + (0.5 * self.cellSize) - 320), ((y * self.cellSize) + (0.5 * self.cellSize) - 320));
                [self addChild:currentNode];
                //NSLog(@"Node added");
                
            }
        }
    }
    NSLog(@"For loop Completed");
    
    //  create a player node
    player = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake(self.cellSize, self.cellSize)];
    player.strokeColor = [UIColor blueColor];
    player.fillColor = [UIColor blueColor];
    
    //  set the player physics
    playerPhysics = [SKPhysicsBody bodyWithRectangleOfSize:CGSizeMake(self.cellSize, self.cellSize)];
    //player will move
    [playerPhysics setDynamic:YES];
    //player sould have collision detection
    [playerPhysics setUsesPreciseCollisionDetection:YES];
    //  not affected by gravity, i.e. object is conmletely controlled my gyro data
    [playerPhysics setAffectedByGravity:NO];
    //  cannot rotate
    [playerPhysics setAllowsRotation:NO];
    //  assign physics to the player
    player.physicsBody = playerPhysics;
    
    CGFloat currentPlayerXPosition = (CGFloat) ((0 * self.cellSize) + (0.5 * self.cellSize) - 320);
    CGFloat currentPlayerYPosition = (CGFloat) (((self.mazeSize - 1) * self.cellSize) + (0.5 * self.cellSize) - 320);
    player.position = CGPointMake(currentPlayerXPosition, currentPlayerYPosition);
    NSLog(@"Player Created");
    
    //  create node to mark the start
    start = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake(self.cellSize, self.cellSize)];
    start.strokeColor = [UIColor greenColor];
    start.fillColor = [UIColor greenColor];
    start.position = CGPointMake(((0 * self.cellSize) + (0.5 * self.cellSize) - 320), (((self.mazeSize - 1) * self.cellSize) + (0.5 * self.cellSize) - 320));
    [self addChild:start];
    NSLog(@"Start node created");
    
    //  create node to mark the end
    end = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake(self.cellSize, self.cellSize)];
    end.strokeColor = [UIColor redColor];
    end.fillColor = [UIColor redColor];
    end.position = CGPointMake((((self.mazeSize - 1) * self.cellSize) + (0.5 * self.cellSize) - 320), ((0* self.cellSize) + (0.5 * self.cellSize) - 320));
    [self addChild:end];
    NSLog(@"End node created");

    //while (true) {
    //CGPoint newPosition = [self.gyroData updatePlayerMotionFromCurrentPositionWithCurrentX:player.position.x CurrentY:player.position.y];
    
    //player.position = newPosition;
    //}
    
    [self addChild:player];
    
    //  initialise gyroData object
    _gyroData = [[DeviceMotion alloc] init];
    
    //  initialise the collection of the gyroscope data
    [_gyroData startMotionUpdates];
    
    //while (true){
    CGPoint newPosition = [_gyroData updatePlayerMotionFromCurrentPositionWithCurrentX:player.position.x CurrentY:player.position.y];
    
    player.position = newPosition;
    NSLog(@"Position = %@", NSStringFromCGPoint(player.position));
    
    //}
    
}

@end
