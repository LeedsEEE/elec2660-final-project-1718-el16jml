//
//  GameScene.m
//  Tilter
//
//  Created by Julian Lee on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
//  Takes the current level object from the view controller and displays the level number, difficulty and the maze itself.


#import "GameScene.h"

@implementation GameScene{
    SKShapeNode *node;
    SKLabelNode *levelTitleLabel;
    SKLabelNode *levelDifficultyLabel;
    SKShapeNode *player;
    SKShapeNode *start;
    SKShapeNode *end;
    SKPhysicsBody *nodePhysics;
    SKPhysicsBody *playerPhysics;
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
    self.cellSize = 640.0/self.mazeSize;
    
    NSLog(@"Cell size set as: %ld", (long)self.cellSize);
    
    //  initialise node and set its properties
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
    
    NSLog(@"Node size, line colour, fill colour and physics set");
    
    //  cycle through the matrix indicies and create a node at the corresponding position if there is a one at that index
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

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"Touches Began");
    //while (true) {

    CGPoint newPosition = [_gyroData updatePlayerMotionFromCurrentPositionWithCurrentX:player.position.x CurrentY:player.position.y];
            
    player.position = newPosition;

    NSLog(@"Position = %@", NSStringFromCGPoint(player.position));
    NSLog(@"Cell Size = %f", self.cellSize);
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"Touches Ended");
}

- (void)willMoveFromView:(SKView *)view{
    //  stop collecting gyroscope data when the view closes, to conserve memory and processing power
    [self.gyroData stopMotionUpdates];
    NSLog(@"Gyro Updates stopped");
}

@end
