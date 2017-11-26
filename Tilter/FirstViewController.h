//
//  FirstViewController.h
//  Tilter
//
//  Created by Julian Lee [el16jml] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Levels.h"

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *levelLabel;
@property (weak, nonatomic) IBOutlet UILabel *difficultyLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (nonatomic, strong) Levels *currentLevel;

@end

