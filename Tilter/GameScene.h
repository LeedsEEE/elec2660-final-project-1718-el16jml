//
//  GameScene.h
//  Tilter
//
//  Created by Julian Lee on 19/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import <GameplayKit/GameplayKit.h>
#import <UIKit/UIKit.h>
#import "Maze.h"

@interface GameScene : SKScene

@property (nonatomic, strong) Maze *maze;
@property (nonatomic, strong) NSMutableArray *spriteNodesColumns;
@property (nonatomic, strong) NSMutableArray *spriteNodes;
@property (nonatomic, strong) SKSpriteNode *parentNode;
@property (nonatomic, readonly) vector_int2 gridPosition;
@property (nonatomic, strong) GKGridGraph *graphNodes;
@property (nonatomic, strong) SKSpriteNode *mazeNode;

- (void) createMaze;
- (void) generateNodes;
- (SKNode *)childNodeWithName:(NSString *)name;


@end
