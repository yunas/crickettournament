//
//  CreatePlayerViewController.h
//  CricketTournament
//
//  Created by Afifa Junaid on 24/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Player.h"
@protocol createPlayerDelegate <NSObject>
-(void)addedPlayer:(Player*)newPlayer;
@end
@interface CreatePlayerViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tfNamePlayer;
@property (weak, nonatomic) IBOutlet UITextField *tfAgePlayer;
@property (weak, nonatomic) IBOutlet UITextField *tfHighScorePlayer;
@property (nonatomic,weak)id <createPlayerDelegate> playerDelegate;
@end

