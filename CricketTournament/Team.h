//
//  Team.h
//  CricketTournament
//
//  Created by Afifa Junaid on 18/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Player;

@interface Team : NSObject
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *region;
@property (nonatomic) NSNumber *ranking;
@property (nonatomic) Player *captain;
@property (nonatomic) UIImage *teamImage;
@property (nonatomic) NSMutableArray *players;

-(void)setValues;
-(NSString*)getName;
-(NSString*)getRegion;
-(NSNumber*)getRanking;
-(NSMutableArray*)getPlayers;

-(Team*) initWithPlist:(NSString*)plistName;
-(void) printDetail;

@end
