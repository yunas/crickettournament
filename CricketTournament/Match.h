//
//  Match.h
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Team.h"
#import "Ground.h"
@interface Match : NSObject
{
    Ground *ground;
}
@property (nonatomic)NSString *teamOne;
@property (nonatomic)NSString *teamTwo;
@property (nonatomic)NSString *teamBatFirst;
@property (nonatomic)NSString *teamBatSecond;
@property (nonatomic)NSString *matchVenue;
@property (nonatomic)NSNumber *matchTime;
@property (nonatomic) NSNumber *scoreTeam1;
@property (nonatomic) NSNumber *scoreTeam2;
@property (nonatomic) NSNumber *noOfBoundariesTeam1;
@property (nonatomic) NSNumber *noOfBoundariesTeam2;
@property (nonatomic) Player *manOfTheMatch;
@property (nonatomic) char hasStarted;
@property (nonatomic) NSString *teamWon;
@property (nonatomic) NSNumber *defaultTimePerOver;
@property (nonatomic) NSNumber *timeForOneInning;
@property (nonatomic) NSNumber *inningsBreakTime;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *secondBattingStartTime;
@property (nonatomic) NSDate *nextMatchWillStartAt;
@property (nonatomic) NSNumber *totalOvers;
@property (nonatomic) NSNumber *interval;
@property (nonatomic) NSString *tossWinner;
@property (nonatomic) NSString *tossLoser;

-(void)setValues;
-(NSString*)getMAtchVenue;
-(NSNumber*)getMatchTime;
-(NSNumber*)getScoreTeam1;
-(NSNumber*)getScoreTeam2;
-(NSNumber*)noOfBoundariesTeam1;
-(NSNumber*)noOfBoundariesTeam2;
-(Player *)getManofTheMatch;
-(Match*)initWithDict:(int)match;
-(void)startMatch:(NSString*)match;
-(NSString*)dateFormatter:(NSDate*)dateString;
@end
