//
//  TimeClass.h
//  TimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TimeClass : NSObject
{
    NSString *day;
    NSString *startTime;
    NSString *endTime;
}
@property(nonatomic,retain)NSString *day;
@property(nonatomic,retain)NSString *startTime;
@property(nonatomic,retain)NSString *endTime;

@end
