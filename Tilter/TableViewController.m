//
//  TableViewController.m
//  Tilter
//
//  Created by Julian Lee on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//
//  Manages the table view and how the information is displayed within it. It also prepares and executes the segue to the next
//  view.
//  

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.levels = [[preSetLevels alloc]init];
    self.bestTimes = [[BestTimes alloc]init];
    
    [_bestTimes initialiseDefaults];
    
    // Uncomment the following line to preserve selection between presentations.
    self.clearsSelectionOnViewWillAppear = YES;
    
    [self.tableView reloadData];
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewDidAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //  three sections for three different difficulties
    if (section == 0){
        NSInteger rows = self.levels.easyLevels.count;
        return rows;
    }
    else if (section == 1){
        NSInteger rows = self.levels.mediumLevels.count;
        return rows;
    }
    else if (section == 2){
        NSInteger rows = self.levels.hardLevels.count;
        return rows;
    }
    else
        return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Level" forIndexPath:indexPath];
    
    //  each section contains the same number of levels that there are of that difficulty e.g. if there are two easy levels, the easy section will contain three rows.
    if (indexPath.section == 0){
        Levels *tempLevel = [self.levels.easyLevels objectAtIndex:indexPath.row];
        cell.levelLabel.text = tempLevel.level;
        cell.difficultyLabel.text = tempLevel.difficulty;
        cell.levelImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", tempLevel.level]];
        cell.timeLabel.text = [NSString stringWithFormat:@"Best Time = %.2f", [self.bestTimes.userDefaults floatForKey:[NSString stringWithFormat:@"%@", tempLevel.level]]];
    }
    else if (indexPath.section == 1){
        Levels *tempLevel = [self.levels.mediumLevels objectAtIndex:indexPath.row];
        cell.levelLabel.text = tempLevel.level;
        cell.difficultyLabel.text = tempLevel.difficulty;
        cell.levelImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", tempLevel.level]];
        cell.timeLabel.text = [NSString stringWithFormat:@"Best Time = %.2f", [self.bestTimes.userDefaults floatForKey:[NSString stringWithFormat:@"%@", tempLevel.level]]];
    }
    else if (indexPath.section == 2){
        Levels *tempLevel = [self.levels.hardLevels objectAtIndex:indexPath.row];
        cell.levelLabel.text = tempLevel.level;
        cell.difficultyLabel.text = tempLevel.difficulty;
        cell.levelImage.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", tempLevel.level]];
        cell.timeLabel.text = [NSString stringWithFormat:@"Best Time = %.2f", [self.bestTimes.userDefaults floatForKey:[NSString stringWithFormat:@"%@", tempLevel.level]]];
    }
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if([[segue identifier] isEqualToString:@"showLevel"]){
        
        SetLevelGameViewController *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        
        //  easy levels
        if (indexPath.section == 0){
            
            Levels *tempLevel = [self.levels.easyLevels objectAtIndex: indexPath.row];
            destinationViewController.currentLevel = tempLevel;
            
        }
        //  medium levels
        else if (indexPath.section == 1){
            
            Levels *tempLevel = [self.levels.mediumLevels objectAtIndex: indexPath.row];
            destinationViewController.currentLevel = tempLevel;
            
        }
        //  hard levels
        else if (indexPath.section == 2){
            
            Levels *tempLevel = [self.levels.hardLevels objectAtIndex: indexPath.row];
            destinationViewController.currentLevel = tempLevel;
            
        }
        
        NSLog(@"Starting segue");
    }
}


@end
