//
//  TimeClass.m
//  TimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TimeClass.h"

@implementation TimeClass
@synthesize day,startTime,endTime;

-(void)dealloc
{
    [super dealloc];
    [day release];
    [startTime release];
    [endTime release];
}

@end
