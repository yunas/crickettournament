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
<UINavigationBarDelegate,UIImagePickerControllerDelegate>
{
    UIImagePickerController *imagePicker;
}
@property (weak, nonatomic) IBOutlet UITextField *tfNamePlayer;
@property (weak, nonatomic) IBOutlet UITextField *tfAgePlayer;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITextField *tfHighScorePlayer;
- (IBAction)btnChooseImage:(id)sender;
- (IBAction)btnSavePlayer:(id)sender;
@property (nonatomic,weak)id <createPlayerDelegate> playerDelegate;
@end

