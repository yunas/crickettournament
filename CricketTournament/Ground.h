//
//  Vanue.h
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ground : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *city;
@property (nonatomic) NSString *country;
@property (nonatomic) NSNumber *street;

-(void)setValues;
-(NSString*)getName;
-(NSString*)getCity;
-(NSString*)getCountry;
-(NSNumber*)getStreet;
-(Ground*)initWithDict:(NSDictionary*)dict;
@end
