//
//  Groups.m
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "Group.h"
@implementation Group

-(void) setNumberOFTeamsEachGroup:(NSArray *)teamsArray
{
    _numberofGroups = @1;
    _numberOFTeamsEachGroup = @([teamsArray count]/_numberofGroups.intValue);
}
-(Group*)initWithMatch:(NSArray*)teams
{
    _numberofGroups = @1;
    _numberOFTeamsEachGroup = @([teams count]/_numberofGroups.intValue);
    _matchesEachGroup = @(_numberOFTeamsEachGroup.intValue*(_numberOFTeamsEachGroup.intValue-1)/2);
    int pak=0,ind=0,sri=0;
    self = [super init];
    if (self) {
        for (int i =0 ; i< _matchesEachGroup.intValue;i++) {
            Match *match = [[Match alloc]initWithDict:i];
            if ([match.teamWon isEqualToString:@"Pakistan"]) {
                pak++;
            }
            else if ([match.teamWon isEqualToString:@"India"])
            {
                ind++;
            }
            else
            {
                sri++;
            }
        }
        
        if (pak > sri && pak > ind) {
            _toper = [[Team alloc]initWithPlist:@"TeamPakistan"];
        }
        else if (ind > sri && pak < ind)
        {
            _toper = [[Team alloc]initWithPlist:@"TeamIndia"];
            
        }
        else
            _toper = [[Team alloc]initWithPlist:@"TeamSrilanka"];
    }
    return self;
}

@end
