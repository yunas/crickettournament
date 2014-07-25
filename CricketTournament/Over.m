//
//  Over.m
//  CricketTournament
//
//  Created by Afifa Junaid on 21/07/2014.
//  Copyright (c) 2014 xyz. All rights reserved.
//

#import "Over.h"

@implementation Over

-(Over*)initWithDict:(NSArray*)over
{
    self = [super init];
    if (self) {
        for (int i=0; i< [over count]; i++) {
            _totalScoreInOver = 0;
            _wicketsFallInOver = 0;
            _totalExraInOver=0;
            NSArray *ball = over [i];
            for (int j=0;j<[ball count];j++)
            {
                NSMutableArray *digit = [ball[j] componentsSeparatedByString:@"+"].mutableCopy;
                for (int k=0; k< [digit count]; k++) {
                    if ([digit[k] isEqualToString:@"wd"] || [digit[k] isEqualToString:@"nb"])
                    {
                        _totalScoreInOver += 1;
                        _totalExraInOver +=1;
                    }
                    else if ([digit[k] isEqualToString:@"wk"])
                    {
                        _wicketsFallInOver += 1;
                    }
                    else
                    {
                        _totalScoreInOver += [digit[k] intValue];
                    }
                }

            }
            _totalIningScore += _totalScoreInOver;
        }
    }
    return self;
}
@end
