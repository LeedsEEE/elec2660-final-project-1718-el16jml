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
#import "TableViewController.h"
#import "FirstViewController.h"

@interface GameScene : SKScene

@property (nonatomic, strong) FirstViewController* viewController;
@property (nonatomic, strong) MazeArrays* mazeArrays;
@property int mazeSize;
@property (nonatomic, strong) NSArray* maze;

@end
