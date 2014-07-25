//
//  Player.h
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic)NSString *name;
@property(nonatomic)NSNumber *age;
@property (nonatomic) NSNumber *highestScore;
@property (nonatomic) NSNumber *strikeRate;
@property (nonatomic) NSNumber *average;
@property (nonatomic) UIImage *playerImage;


-(BOOL)canBat;
-(BOOL)canbowl;
-(void)setValues;
-(NSString*)getName;
-(NSNumber*)getAge;
-(NSNumber*)getHighestScore;
-(NSNumber*)getStrikeRate;
-(NSNumber*)getAverage;


-(Player *) initWithDictionary:(NSDictionary*)playerDict;
-(void)printDetail;

@end
