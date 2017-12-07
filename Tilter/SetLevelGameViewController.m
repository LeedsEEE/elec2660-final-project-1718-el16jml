//
//  SetLevelGameViewController.m
//  Tilter
//
//  Created by Julian Lee on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
//  Takes an object from the tableViewController and sends it to the gameScene. Also takes the scene from gameScene and
//  assigns it to the view by setting the aspect ratio and then actually presenting it.
//  

#import "SetLevelGameViewController.h"

@interface SetLevelGameViewController ()

@end

@implementation SetLevelGameViewController

Levels *currentLevel;

//  get the maze for the selected level from the view controller
NSMutableArray* GetCurrentMaze(){
    return currentLevel.Maze;
}

//  get the size of the selected level from the view controller
NSInteger GetCurrentMazeSize(){
    return currentLevel.size;
}

// Get the name of the selected level from teh view controller
NSString* GetCurrentLevelName(){
    return currentLevel.level;
}

//  Get the difficulty of the selected level from the view controller
NSString* GetCurrentDifficulty(){
    return currentLevel.difficulty;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //  Do any additional setup after loading the view.
    
    NSLog(@"Scene view controller loaded");
    
    //self.scene = [[GameScene alloc] init];
    
    currentLevel = self.currentLevel;
    
    //  load the scene from skscene
    GameScene *scene = (GameScene *)[SKScene nodeWithFileNamed:@"GameScene"];
    
    NSLog(@"Scene loaded to view controller");
    
    //  fit the scene to the window
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    NSLog(@"Scene scaled to view size");
    
    //  Present the scene
    SKView *skView = (SKView *)self.view;
    [skView presentScene:scene];
    
    //skView.showsFPS = YES;
    skView.preferredFramesPerSecond = 60;
    
    NSLog(@"Scene Presented");

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
