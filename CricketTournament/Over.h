//
//  Over.h
//  CricketTournament
//
//  Created by Afifa Junaid on 21/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Over : NSObject
@property (nonatomic)int wicketsFallInOver;
@property (nonatomic)int totalScoreInOver;
@property (nonatomic)int totalExraInOver;
@property (nonatomic)int totalIningScore;

-(Over*)initWithDict:(NSArray*)over;
@end
