# elec2660-final-project-1718-el16jml
elec2660-final-project-1718-el16jml created by GitHub Classroom


ELEC 2660 Final Project
Julian Lee
201021444

This project is a game in which mazes are created and assigned to levels. The user then selects a level from the table view 
and guides a player through the maze to the finish as quickly as possible; the best times are then saved and displayed both in
the level and on the tale view. 

The "MazeArrays" class is where the mazes are stored and created, they are then assigned to a "Lelevs" object in the
"preSetLevels" class. The table view is then built in the "TableViewController" using cells that are designed in the 
storyboard and interacted with via the "CustomTableViewCell" class. When the user selects a row, a segue is performed between 
the tableView and "setLevelGameViewController.h" which displays the scene created in "GameScene". The game scene class builds 
the maze through a series of square, black nodes that are placed over a larger grey node according to the maze array, the 
black nodes are given physics properties to allow then to interact with a player node, created in blue. 

Every frame, the player position is updated according to the orientation of the phone, which is dealt with in the 
"DeviceMotion" class. When the positiopn of the player is within a specified range of the end point, the timer stops and two 
labels are displayed to inform the user that they have completed the level. If the time they recorded is better than the 
current best time, then this is updated to match the time that the user has just completed the level in. This updated time is 
also displayed on the tableView when the user returns to it after completing the level. The getting and setting of these best 
times is handled by an NSUserDefaults object in the "BestTimes" class.


