//
//  Match.m
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "Match.h"
#import "Over.h"
#import "Ground.h"
@implementation Match

-(Match*)initWithDict:(int)match1
{
   
        
    self = [super init];

    if (self) {
        if (match1==0)
        {
            [self startMatch:@"PakvsInd"];
            [self print];
        }
        else if (match1==1)
        {
            [self startMatch:@"PakvsSri"];
            [self print];
        }
        else
        {
            [self startMatch:@"IndvsSri"];
            [self print];
        }
    }
    return self;
}

-(void)startMatch:(NSString*)match
{
    NSArray *path = [[NSArray alloc]initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:match ofType:@"plist"]];
    NSDictionary *dict = path[0];
    
    _teamOne = dict[@"teamOne"];
    _teamTwo = dict[@"teamTwo"];
    _defaultTimePerOver = dict[@"timePerOver"];
    _inningsBreakTime = dict[@"interval"];
    _interval = dict[@"interval"];
    _startTime = dict[@"matchStartTime"];
    _totalOvers = dict[@"totalOvers"];
    _nextMatchWillStartAt = dict[@"matchStartTime"];
    _timeForOneInning = @(_defaultTimePerOver.intValue*_totalOvers.intValue);
    _secondBattingStartTime = [_startTime dateByAddingTimeInterval:_timeForOneInning.intValue * 60 + _inningsBreakTime.intValue*60];
    _nextMatchWillStartAt = [_secondBattingStartTime dateByAddingTimeInterval:_interval.intValue*60];
    
    [self tose:dict];
    NSArray *random = @[@"oversTeam1",@"oversTeam1",@"oversTeam12",@"oversTeam12"];
    
    uint32_t rnd = arc4random_uniform([random count]);
    
    ground = [[Ground alloc]initWithDict:dict[@"ground"]];
    
    Over *over1 = [[Over alloc]initWithDict:dict[[random objectAtIndex:rnd]]];
    
    rnd = arc4random_uniform([random count]);
    
    Over *over2 = [[Over alloc]initWithDict:dict[[random objectAtIndex:rnd]]];
   
    if (over1.totalIningScore > over2.totalIningScore) {
        _teamWon = _teamBatFirst;
    }
    else if (over1.totalIningScore > over2.totalIningScore)
    {
        _teamWon = _teamBatSecond;
    }
    else
    {
        _teamWon = @"Tie";
    }
   
}
-(void)print
{
    NSString *decision;
    if ([_teamBatFirst isEqualToString:_tossWinner]) {
        decision = @"Bat";
    }
    else
    {
        decision = @"Bowl";
    }
    NSLog(@"\n\n\n\n***********************************************************************\n* %@ vs %@\n* Starts at %@\n* Total Overs : %@\n* Ground : %@\n* Toss : %@ won the toss and choose to %@ first\n* Team Bat First : %@\n* Team Bat Second : %@\n* Winner -> %@\n *********************************************************************** ",_teamOne,_teamTwo,[self dateFormatter:_startTime],_totalOvers,ground.name,_tossWinner,decision,_teamBatFirst,_teamBatSecond,_teamWon);
}
-(NSString*)dateFormatter:(NSDate*)date
{
    NSDateFormatter *format = [NSDateFormatter new];
    [format setDateFormat:@"dd MMM, yyyy HH:mm"];
    
    NSString *timeWithFormate= [format stringFromDate:date];
    return timeWithFormate;
}

-(void)tose:(NSDictionary*)dict
{
    
    NSArray *tossChoice = @[@"head",@"tail"];
    
    uint32_t rndToss = arc4random_uniform([tossChoice count]);
    
    if ([[tossChoice objectAtIndex:rndToss] isEqualToString:@"tail"]) {
        _tossWinner = _teamOne;
        _tossLoser = _teamTwo;
    }
    else
    {
        _tossWinner = _teamTwo;
        _tossLoser = _teamOne;
    }
    NSArray *Decision = @[@"bat",@"bowl"];
    
    uint32_t rndDecision = arc4random_uniform([Decision count]);
    if ([[Decision objectAtIndexedSubscript:rndDecision] isEqualToString:@"bat"]) {
        _teamBatFirst = _tossWinner;
        _teamBatSecond = _tossLoser;
    }
    else
    {
        _teamBatFirst = _tossLoser;
        _teamBatSecond = _tossWinner;
    }
    
    
}
@end
