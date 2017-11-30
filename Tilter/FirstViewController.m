//
//  FirstViewController.m
//  Tilter
//
//  Created by Julian Lee [el16jml] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSLog(@"Segue complete");
    
    self.levelLabel.text = self.currentLevel.level;
    self.difficultyLabel.text = self.currentLevel.difficulty;
    self.puzzleSize = self.currentLevel.size;
    
    NSLog(@"Current Level Size: %d", self.puzzleSize);
    
    NSLog(@"Properties assigned to view");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
