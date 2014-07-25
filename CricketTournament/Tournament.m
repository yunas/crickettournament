//
//  Tournament.m
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "Tournament.h"

@implementation Tournament

-(Tournament*)initWithGroups : (NSArray*)teams
{
    _numberOfTeams = @([teams count]);
    self = [super self];
    if (self) {
        Group *group = [[Group alloc]initWithMatch:teams];
        _winner = group.toper;
    }
    return self;
}
-(void)printWinnerTeam
{
    NSLog(@"%@",_winner.name);
}
@end
