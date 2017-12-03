//
//  TableViewController.h
//  Tilter
//
//  Created by Julian Lee on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "preSetLevels.h"
#import "SetLevelGameViewController.h"
#import "GameScene.h"

@interface TableViewController : UITableViewController

@property (nonatomic, strong) preSetLevels *levels;
@property (nonatomic, strong) NSArray* maze;
@property int mazeSize;


@end
