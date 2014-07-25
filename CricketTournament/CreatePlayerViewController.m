//
//  CreatePlayerViewController.m
//  CricketTournament
//
//  Created by Afifa Junaid on 24/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "CreatePlayerViewController.h"

@interface CreatePlayerViewController ()
@end

@implementation CreatePlayerViewController
- (IBAction)btnChooseImage:(id)sender {
    imagePicker.delegate = self;
    imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePicker animated:YES completion:NULL];
}
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image;
    NSURL *media;
    media=(NSURL*)[info valueForKeyPath:UIImagePickerControllerMediaURL];
    image = (UIImage*)[info valueForKey:UIImagePickerControllerOriginalImage];
    _imageView.image = image;
    [picker dismissViewControllerAnimated:YES completion:NULL];

}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:NULL];
}
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
    imagePicker = [[UIImagePickerController alloc]init];
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
    player.Image = _imageView.image;
    player.name = _tfNamePlayer.text;
    player.age=@([_tfAgePlayer.text intValue]);
    player.highestScore = @([_tfHighScorePlayer.text intValue]);
    [_playerDelegate addedPlayer:player];
    [self.navigationController popViewControllerAnimated:TRUE];
}

@end
