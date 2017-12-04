//
//  GameScene.h
//  Tilter
//
//  Created by Julian Lee on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import <Foundation/Foundation.h>
#import "MazeArrays.h"
#import "SetLevelGameViewController.h"
#import "Levels.h"
#import "DeviceMotion.h"

@interface GameScene : SKScene

@property (nonatomic, strong) MazeArrays* mazeArrays;
@property int mazeSize;
@property (nonatomic, strong) NSArray* maze;
@property (nonatomic, strong) Levels* currentLevel;
@property (nonatomic, strong) NSString* levelTitle;
@property (nonatomic, strong) NSString* levelDifficulty;
@property (nonatomic, strong) DeviceMotion* gyroData;
//@property (nonatomic, strong) SetLevelGameViewController* viewController;

@property float cellSize;

@end
