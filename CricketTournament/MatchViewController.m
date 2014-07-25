//
//  MatchViewController.m
//  CricketTournament
//
//  Created by Afifa Junaid on 24/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "MatchViewController.h"
#import "CreatTeamViewController.h"
@interface MatchViewController () <createTeamDelgate>

@end

@implementation MatchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    teamsList = [[NSMutableArray alloc]init];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Navigation




// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CreatTeamViewController *controller = segue.destinationViewController;
    controller.teamDelegate = self;
}
-(void)addedTeam:(Team*)newTeam
{
    [teamsList addObject:teamsList];
    
}


@end
