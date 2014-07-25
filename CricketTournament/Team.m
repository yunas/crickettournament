//
//  Team.m
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "Team.h"
#import "Player.h"

@implementation Team



-(Team*) initWithPlist:(NSString*)plistName{
    
    NSArray *path = [[NSArray alloc]initWithContentsOfFile:
                     [[NSBundle mainBundle] pathForResource:plistName
                                                     ofType:@"plist"]];
    self = [super init];
    
    if (self) {
        NSDictionary *dict = path[0];
        _name = dict[@"name"];
        _region = dict[@"region"];
        NSArray *arr = dict[@"players"];
        _players = [NSMutableArray new];
        for (NSDictionary *playerdict in arr)
        {
            [_players addObject:[[Player alloc] initWithDictionary:playerdict]];
        }
    }
    return self;
}


-(void) printDetail{
    NSLog(@"Name => %@",_name);
    NSLog(@"Region => %@",_region);
    for (Player *player in _players) {
        [player printDetail];
    }
}
@end
