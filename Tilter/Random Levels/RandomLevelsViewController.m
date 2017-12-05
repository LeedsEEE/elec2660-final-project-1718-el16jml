//
//  RandomLevelsViewController.m
//  Tilter
//
//  Created by Julian Lee on 05/12/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "RandomLevelsViewController.h"

@interface RandomLevelsViewController ()

@end

@implementation RandomLevelsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //  load the scene from skscene
    RandomLevelsScene *scene = (RandomLevelsScene *)[SKScene nodeWithFileNamed:@"RandomLevelsScene"];
    
    NSLog(@"Scene loaded to view controller");
    
    //  fit the scene to the window
    scene.scaleMode = SKSceneScaleModeAspectFill;
    
    NSLog(@"Scene scaled to view size");
    
    //  Present the scene
    SKView *skView = (SKView *)self.view;
    [skView presentScene:scene];

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
