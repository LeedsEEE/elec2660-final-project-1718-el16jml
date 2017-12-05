//
//  RandomLevelsScene.h
//  Tilter
//
//  Created by Julian Lee on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import <Foundation/Foundation.h>
#import "DeviceMotion.h"
#import "TWMazeGenerator.h"
#import "DeviceMotion.h"

@interface RandomLevelsScene : SKScene

@property (nonatomic, strong) TWMaze* randomMaze;
@property (nonatomic, strong) NSArray* maze;
@property (nonatomic, strong) DeviceMotion* gyroData;
@property int mazeSize;
@property(nonatomic, strong) TWMazeGenerator* mazeGenerator;

@property float cellSize;

@end
