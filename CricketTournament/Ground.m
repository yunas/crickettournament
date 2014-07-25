//
//  Vanue.m
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "Ground.h"

@implementation Ground

-(Ground*)initWithDict:(NSDictionary*)dict
{
    self = [super init];
    if (self)
    {
    _name = dict[@"name"];
    _city = dict [@"city"];
    _country = dict[@"country"];
    _street = dict[@"street"];
    }
    return self;
}

-(NSString*)getName
{
    return _name;
}
@end
