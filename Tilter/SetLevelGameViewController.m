//
//  SetLevelGameViewController.m
//  Tilter
//
//  Created by Julian Lee on 28/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "SetLevelGameViewController.h"
#import "GameScene.h"

@interface SetLevelGameViewController ()

@end

@implementation SetLevelGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //  Do any additional setup after loading the view.
    

    
    NSLog(@"Scene view controller loaded");
    
    //  load the scene from skscene
    GameScene *scene = (GameScene *)[SKScene nodeWithFileNamed:@"GameScene"];
    
    NSLog(@"Scene loaded to view controller");
    
    //  fit the scene to the window
    scene.scaleMode = SKSceneScaleModeResizeFill;
    SKView *skView = (SKView *)self.view;
    
    NSLog(@"Scene scaled to view size");
    
    // Present the scene
    [skView presentScene:scene];
    
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
