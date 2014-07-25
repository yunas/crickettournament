//
//  Tournament.h
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Team.h"
#import "Group.h"
@interface Tournament : NSObject
@property (nonatomic) NSNumber *numberOfTeams;
@property (nonatomic) Team *winner;
@property (nonatomic) NSMutableArray *venues;
@property (nonatomic) Player *playerOfTheTournament;
@property (nonatomic) NSNumber *prizeCash;
@property (nonatomic) NSString *matchHistory;
@property (nonatomic) NSString *matchSchedule;
@property (nonatomic) NSMutableArray *groups;

-(void) setValues;
-(NSNumber*) getNumberOfTeams;
-(NSNumber*) getPrizaCash;
-(NSString*) getMatchHistory;
-(NSString*) getMatchSchdule;
-(NSMutableArray*) getGroups;
-(NSMutableArray*) getVenues;

-(Tournament*)initWithGroups : (NSArray*)teams;
-(void)printWinnerTeam;

@end
