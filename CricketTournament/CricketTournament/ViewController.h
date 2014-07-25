//
//  ViewController.h
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tournament.h"
#import <QuartzCore/QuartzCore.h>
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *eventSegment;
- (IBAction)organizeTounamentButton:(id)sender;
- (IBAction)inProgressTounamentButton:(id)sender;
- (IBAction)lastTournamentButton:(id)sender;
- (IBAction)eventSegmentButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *matchSegmentView;
@property (weak, nonatomic) IBOutlet UIView *touramentSegmentView;

@end
