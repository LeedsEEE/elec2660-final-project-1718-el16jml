//
//  TableViewController.m
//  Tilter
//
//  Created by Julian Lee on 26/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.levels = [[preSetLevels alloc]init];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Level" forIndexPath:indexPath];
    
    if (indexPath.section == 0){
        Levels *tempLevel = [self.levels.easyLevels objectAtIndex:indexPath.row];
        cell.textLabel.text = tempLevel.level;
        cell.detailTextLabel.text = tempLevel.difficulty;
    }
    else if (indexPath.section == 1){
        Levels *tempLevel = [self.levels.mediumLevels objectAtIndex:indexPath.row];
        cell.textLabel.text = tempLevel.level;
        cell.detailTextLabel.text = tempLevel.difficulty;
    }
    else if (indexPath.section == 2){
        Levels *tempLevel = [self.levels.hardLevels objectAtIndex:indexPath.row];
        cell.textLabel.text = tempLevel.level;
        cell.detailTextLabel.text = tempLevel.difficulty;
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
        
        FirstViewController *destinationViewController = [segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        
        if (indexPath.section == 0){
            
            Levels *tempLevel = [self.levels.easyLevels objectAtIndex: indexPath.row];
            destinationViewController.currentLevel = tempLevel;
            
        }
        else if (indexPath.section == 1){
            
            Levels *tempLevel = [self.levels.mediumLevels objectAtIndex: indexPath.row];
            destinationViewController.currentLevel = tempLevel;
        }
        else if (indexPath.section == 2){
            
            Levels *tempLevel = [self.levels.hardLevels objectAtIndex: indexPath.row];
            destinationViewController.currentLevel = tempLevel;
        }
    }
}


@end
