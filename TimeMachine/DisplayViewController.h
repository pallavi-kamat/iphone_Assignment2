//
//  DisplayViewController.h
//  TimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class TimeClass;

@interface DisplayViewController : UIViewController<UITableViewDataSource>
{
    NSMutableArray *timeArray;
    NSMutableArray *displayArray;
    IBOutlet UITableView *displayTableView;
    TimeClass *time1;
    bool flag;
    int i;
}
- (id)initWithArray:(NSMutableArray *)_timeArray;
-(void)compairTime;
@end
