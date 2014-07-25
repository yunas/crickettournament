//
//  CreatePlayerViewController.m
//  CricketTournament
//
//  Created by Afifa Junaid on 24/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "CreatePlayerViewController.h"

@interface CreatePlayerViewController ()
- (IBAction)btnSavePlayer:(id)sender;

@end

@implementation CreatePlayerViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self view] endEditing:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnSavePlayer:(id)sender {
    Player *player = [[Player alloc]init];
    player.name = _tfNamePlayer.text;
    player.age=@([_tfAgePlayer.text intValue]);
    player.highestScore = @([_tfHighScorePlayer.text intValue]);
    [_playerDelegate addedPlayer:player];
    [self.navigationController popViewControllerAnimated:TRUE];
}
@end
