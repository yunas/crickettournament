//
//  CreatTeamViewController.h
//  CricketTournament
//
//  Created by Afifa Junaid on 24/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
#import "Team.h"
@protocol createTeamDelgate <NSObject>
-(void)addedTeam:(Team*)newTeam;
@end
@interface CreatTeamViewController : UIViewController
{
    NSMutableArray *playersList;
}
@property (weak, nonatomic) IBOutlet UITableView *tableViewPlayer;
- (IBAction)btnAddTeam:(id)sender;
@property (nonatomic,weak) id <createTeamDelgate> teamDelegate;
@end
