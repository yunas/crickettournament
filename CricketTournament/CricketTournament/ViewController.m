//
//  ViewController.m
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "ViewController.h"
#import "Team.h"
#import "Match.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //1. Create team 1
    
//    Team *team1 = [[Team alloc]initWithPlist:@"TeamPakistan"];
//    Team *team2 = [[Team alloc]initWithPlist:@"TeamIndia"];
//    Team *team3 = [[Team alloc]initWithPlist:@"TeamSrilanka"];
//    NSMutableArray *teams = [NSMutableArray arrayWithObjects:team1,team2,team3, nil];
//    Tournament *tour = [[Tournament alloc]initWithGroups:teams];
//    [tour printWinnerTeam];
    //[[Team new] initWithPlist:@"TeamPakistan"];
//    NSLog(@"%@",[team initWithPlist:@"TeamPakistan"]);
    //2. Create team 2
    //3. Show Team 1
//    //4. Show Team 2
//    Match *match = [[Match alloc]init];
//    [match startMatch:@"PakvsInd"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)organizeTounamentButton:(id)sender {
}

- (IBAction)inProgressTounamentButton:(id)sender {
}

- (IBAction)lastTournamentButton:(id)sender {
}

- (IBAction)eventSegmentButton:(id)sender {
    switch (_eventSegment.selectedSegmentIndex) {
        case 0:
            _matchSegmentView.hidden = false;
            _touramentSegmentView.hidden = true;
            break;
        case 1:
            _matchSegmentView.hidden = true;
            _touramentSegmentView.hidden = false;
            break;
        default:
            break;
    }
}
@end
