//
//  Player.m
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "Player.h"

@implementation Player

-(Player *) initWithDictionary:(NSDictionary*)playerDict{
    
    self = [super init];
    if (self)
    {
        _name = playerDict[@"name"];
        _age = playerDict[@"age"];
        _strikeRate = playerDict[@"strikeRate"];
        _average = playerDict[@"average"];
        _highestScore = playerDict[@"highScore"];
    }
    return self;
}

-(void)printDetail{
    NSLog(@"%@",_name);
}

@end
