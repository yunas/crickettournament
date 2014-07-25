//
//  CreatTeamViewController.m
//  CricketTournament
//
//  Created by Afifa Junaid on 24/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "CreatTeamViewController.h"
#import "CreatePlayerViewController.h"
#import "Player.h"
@interface CreatTeamViewController ()<UITableViewDataSource, UITableViewDelegate, createPlayerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *tfTeamName;
@property (weak, nonatomic) IBOutlet UITextField *tfRegion;
@property (weak, nonatomic) IBOutlet UIButton *btnAddPlayer;

@end

@implementation CreatTeamViewController

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
    
    playersList = [NSMutableArray new];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    CreatePlayerViewController *controller = segue.destinationViewController;
    controller.playerDelegate = self;
}


-(void)addedPlayer:(Player*)newPlayer
{
    [playersList addObject:newPlayer];
    [_tableViewPlayer reloadData];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return playersList.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString * identifier = @"cell";
    
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    Player *player = playersList[indexPath.row];
    cell.textLabel.text = player.name;

    
    return cell;
}


- (IBAction)btnAddTeam:(id)sender {
    Team *team = [[Team alloc]init];
    team.name = _tfTeamName.text;
    team.region = _tfRegion.text;
    team.players = playersList;
    [_teamDelegate addedTeam:team];
    [self.navigationController popViewControllerAnimated:YES];
}
@end