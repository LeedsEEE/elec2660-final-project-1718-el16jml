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
    SKLabelNode *wellDoneLabel;
    SKLabelNode *levelCompleteLabel;
    SKLabelNode *timeLabel;
    SKLabelNode *bestTimeLabel;
    SKShapeNode *player;
    SKShapeNode *start;
    SKShapeNode *end;
    SKPhysicsBody *nodePhysics;
    SKPhysicsBody *playerPhysics;
}


- (void)didMoveToView:(SKView *)view {

    _bestTimes = [[BestTimes alloc] init];
    self.ended = NO;
    
    [_bestTimes initialiseDefaults];
    
#pragma mark GET PROPERTIES
    
    //  get the maze
    self.maze = GetCurrentMaze();

    //  get the maze size
    self.mazeSize = GetCurrentMazeSize();
    NSLog(@"Maze size set as: %d", self.mazeSize);
    
    //  Set the cell size
    self.cellSize = 640.0/self.mazeSize;
    NSLog(@"Cell size set as: %ld", (long)self.cellSize);
    
#pragma mark LABELS
    
    // get the labels
    levelTitleLabel = (SKLabelNode *)[self childNodeWithName:@"levelLabel"];
    levelDifficultyLabel = (SKLabelNode *)[self childNodeWithName:@"difficultyLabel"];
    wellDoneLabel = (SKLabelNode *)[self childNodeWithName:@"WellDone"];
    levelCompleteLabel = (SKLabelNode *)[self childNodeWithName:@"LevelComplete"];
    timeLabel = (SKLabelNode *)[self childNodeWithName:@"TimeLabel"];
    bestTimeLabel = (SKLabelNode *)[self childNodeWithName:@"BestTimeLabel"];
    
    //  set the labels
    levelTitleLabel.text = GetCurrentLevelName();
    levelDifficultyLabel.text = GetCurrentDifficulty();
    bestTimeLabel.text = [NSString stringWithFormat:@"Best Time = %.2f",[self.bestTimes.userDefaults floatForKey:GetCurrentLevelName()] ];
    
    //  Hide the finished level labels
    wellDoneLabel.hidden = YES;
    levelCompleteLabel.hidden = YES;
    
#pragma mark NODES
    
    //  initialise Maze node and set its properties
    node = [SKShapeNode shapeNodeWithRectOfSize:CGSizeMake(self.cellSize, self.cellSize)];
    node.strokeColor = [UIColor blackColor];
    node.fillColor = [UIColor blackColor];
    
    //  set the Physics for the maze nodes
    nodePhysics = [SKPhysicsBody bodyWithRectangleOfSize:CGSizeMake(self.cellSize, self.cellSize)];
    //node does not move
    [nodePhysics setDynamic:NO];
    //node sould have collision detection
    [nodePhysics setUsesPreciseCollisionDetection:YES];
    //  assign physics to the node
    node.physicsBody = nodePhysics;
    
    NSLog(@"Node size, line colour, fill colour and physics set");
    
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
    
    //  set the player position
    CGFloat currentPlayerXPosition = (CGFloat) ((0 * self.cellSize) + (0.5 * self.cellSize) - 320);
    CGFloat currentPlayerYPosition = (CGFloat) (((self.mazeSize - 1) * self.cellSize) + (0.5 * self.cellSize) - 320);
    player.position = CGPointMake(currentPlayerXPosition, currentPlayerYPosition);
    
    //  add the player to the scene
    [self addChild:player];
    NSLog(@"Player Created");
    
#pragma mark CREATE MAZE
    
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
    
    
#pragma mark GYRO DATA INITIALISATION
    //  initialise gyroData object
    _gyroData = [[DeviceMotion alloc] init];
    
    //  initialise the collection of the gyroscope data
    [_gyroData startMotionUpdates];
    
    self.timefloat = 0.1;
    self.levelTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 repeats:YES block:^(NSTimer *timer){self.timefloat += 0.1;}];
    
    timeLabel.text = [NSString stringWithFormat:@"Time = 0.00"];
}

#pragma mark EVERY FRAME

//  Executed every frame:
-(void)didFinishUpdate{
    CGPoint newPosition = [_gyroData updatePlayerMotionFromCurrentPositionWithCurrentX:player.position.x CurrentY:player.position.y];
    
    //  update the player position if the lavel is still being played
    if (self.ended == NO){
        player.position = newPosition;
        NSLog(@"Position = %.2f , %.2f", player.position.x, player.position.y);
    }
    
    //  update the time label
    timeLabel.text = [NSString stringWithFormat:@"Time = %.2f", _timefloat];
    
    //  get the position of the end node as an integer
    int endX = (int)end.position.x;
    int endY = (int)end.position.y;
    
#pragma mark WHEN LEVEL ENDS
    
    //  when the player reaches the end, show the two labels to say its complete
    if (player.position.x > (endX - (self.cellSize / 2)) && player.position.x < (endX + (self.cellSize / 2))){
        if (player.position.y > (endY - (self.cellSize / 2)) && player.position.y < (endY + (self.cellSize / 2))){
            if (self.ended == NO){
                [self levelDidEnd];
                self.ended = YES;
                
            }
        }
    }
}

-(void) levelDidEnd{
    //  show completed level lablels
    wellDoneLabel.hidden = NO;
    levelCompleteLabel.hidden = NO;
    
    
    //  update best time if required
    if ([self.bestTimes.userDefaults floatForKey:GetCurrentLevelName()] == 0.0 || _timefloat < [self.bestTimes.userDefaults floatForKey:GetCurrentLevelName()]){
        [self.bestTimes setBestTimeForLevel:GetCurrentLevelName() asTime:_timefloat];
        bestTimeLabel.text = [NSString stringWithFormat:@"Best Time = %.2f",[self.bestTimes getBestTimeForLevel:GetCurrentLevelName()]];
        NSLog(@"Best Time %f", [self.bestTimes getBestTimeForLevel:GetCurrentLevelName()]);
        [self.bestTimes.userDefaults setFloat:_timefloat forKey:GetCurrentLevelName()];
        NSLog(@"Best Time saved as: %f", [self.bestTimes.userDefaults floatForKey:GetCurrentLevelName()]);
    }
    //  clean up
    [self.levelTimer invalidate];
    [_gyroData stopMotionUpdates];
    
}

@end
