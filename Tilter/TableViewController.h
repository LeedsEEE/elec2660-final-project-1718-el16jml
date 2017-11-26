//
//  TableViewController.h
//  Tilter
//
//  Created by Julian Lee on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "preSetLevels.h"
#import "FirstViewController.h"

@interface TableViewController : UITableViewController

@property (nonatomic, strong) preSetLevels *levels;

@end
