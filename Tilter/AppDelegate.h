//
//  AppDelegate.h
//  Tilter
//
//  Created by Julian Lee [el16jml] on 14/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "preSetLevels.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) preSetLevels* setLevels;



@end

