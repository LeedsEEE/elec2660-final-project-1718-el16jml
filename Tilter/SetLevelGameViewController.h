//
//  SetLevelGameViewController.h
//  Tilter
//
//  Created by Julian Lee on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import <GameplayKit/GameplayKit.h>
#import <Foundation/Foundation.h>
#import "Levels.h"
#import "GameScene.h"

@interface SetLevelGameViewController : UIViewController

@property (nonatomic, strong) Levels* currentLevel;
@property (nonatomic, strong) SKView* skView;

Levels* GetCurrentLevelObject();
NSMutableArray* GetCurrentMaze();
NSInteger GetCurrentMazeSize();
NSString* GetCurrentLevelName();
NSString* GetCurrentDifficulty();
NSString* GetBestTime();


@end
