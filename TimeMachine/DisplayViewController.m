//
//  DisplayViewController.m
//  TimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DisplayViewController.h"
#import "TimeClass.h"

@implementation DisplayViewController

- (id)initWithArray:(NSMutableArray *)_timeArray
{
    self = [super init];
    if (self) {
        [timeArray removeAllObjects];
        timeArray=_timeArray;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    displayArray=[[NSMutableArray alloc]init];
    for(TimeClass *t in timeArray)
    {
        NSLog(@"Display: %@ %@ %@",t.day,t.startTime,t.endTime);
    }
    [self compairTime];
}

- (void)viewDidUnload
{
    [displayTableView release];
    displayTableView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(void)compairTime
{
    int j=0;
    flag=false;
    for (i=0; i<timeArray.count-1;i++) {
        
        time1=[timeArray objectAtIndex:j];
        TimeClass *time2=[timeArray objectAtIndex:i+1];
        if([time1.startTime isEqualToString:time2.startTime] && [time1.endTime isEqualToString:time2.endTime])
        {
            flag=true;
        }
        else
        {
            j=i+1;
            if(flag==false)
            {            
                NSString *str1=[NSString stringWithFormat:@"%@  %@ to %@",time1.day,time1.startTime,time1.endTime];
                [displayArray addObject:str1];
                NSLog(@"****");
            }
            if(flag==true)
            {
                TimeClass *time3=[timeArray objectAtIndex:i];
                NSString *str=[NSString stringWithFormat:@"%@ - %@  %@ to %@",time1.day,time3.day,time1.startTime,time1.endTime];
                [displayArray addObject:str];
                flag=false;
            }

            
        }

    }
    if(flag==true)
    {
        TimeClass *time3=[timeArray objectAtIndex:i];
        NSString *str=[NSString stringWithFormat:@"%@ - %@  %@ to %@",time1.day,time3.day,time1.startTime,time1.endTime];
        [displayArray addObject:str];
        flag=false;
    }
    for(NSString *str in displayArray)
    {
        NSLog(@"DisplayArray: %@ ",str);
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return displayArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell=[displayTableView dequeueReusableCellWithIdentifier:@"myId"];
    if(cell==nil)
    {
        cell=[[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myId"]autorelease];
    }
    NSString *str=[displayArray objectAtIndex:indexPath.row];
    cell.textLabel.text=str;
    return cell;
}

- (void)dealloc {
    [displayTableView release];
    [super dealloc];
}
@end
