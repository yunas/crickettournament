//
//  Groups.h
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Match.h"
#import "Team.h"
@interface Group : NSObject
@property (nonatomic) NSNumber *numberOFTeamsEachGroup;
@property (nonatomic) NSNumber *numberofGroups;
@property (nonatomic) NSNumber *matchesEachGroup;
@property (nonatomic) Team *toper;

-(void) setNumberOFTeamsEachGroup:(NSArray *)teamsArray;
-(Group*)initWithMatch:(NSArray*)teams;
@end
