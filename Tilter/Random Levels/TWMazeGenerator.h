//
//  The following, as with all files denoted by TW are from a git hub repository avaliable at
//  https://github.com/bloggertom/TWMazeGenerator
//
//  These files have been used for the maze generation algorithm, the interfacing and display of the maze has been added
//  seperately and after the repository had been imported.


//
//  TWMazeGenerator.h
//  TWMazeGenerator
//
//  Created by Thomas Wilson on 19/10/2013.
//  Copyright (c) 2013 Thomas Wilson.
//
/*
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */

#import <Foundation/Foundation.h>
#import "TWPathFinder.h"


@class TWMaze;
@interface TWMazeGenerator : NSObject

@property (nonatomic, strong)id<TWPathFinder> pathFinder;

-(TWMaze*)generateMazeOfSize:(CGSize)size;
-(TWMaze *)generateMazeForMapSize:(CGSize)size;

+(TWMaze *)generateMazeOfSize:(CGSize)size;
+(TWMaze *)generateMazeForMapSize:(CGSize)size;

-(id)initWithPathFinder:(id<TWPathFinder>)pathFinder;



-(CGSize)mapSize;
-(CGSize)mazeSize;
@end
