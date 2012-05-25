//
//  TimeChartController.m
//  TimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TimeChartController.h"
#import "TimeClass.h"
#import "DisplayViewController.h"

@implementation TimeChartController
@synthesize labelMon;
@synthesize labelTue;
@synthesize labelWed;
@synthesize labelThu;
@synthesize labelFri;
@synthesize labelSat;
@synthesize labelSun;

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
    self.title=@"Time Machine";
    startTimeArray=[[NSMutableArray alloc]init];

   
   // endTimeArray=[[NSMutableArray alloc]init];
}

- (void)viewDidUnload
{

    [self setLabelMon:nil];
    [self setLabelTue:nil];
    [self setLabelWed:nil];
    [self setLabelThu:nil];
    [self setLabelFri:nil];
    [self setLabelSat:nil];
    [self setLabelSun:nil];
    [startMon release];
    startMon = nil;
    [monFirstMeridian release];
    monFirstMeridian = nil;
    [tueFirstMeridian release];
    tueFirstMeridian = nil;
    [wedFirstMeridian release];
    wedFirstMeridian = nil;
    [thuFirstMeridian release];
    thuFirstMeridian = nil;
    [friFirstMeridian release];
    friFirstMeridian = nil;
    [satFirstMeridian release];
    satFirstMeridian = nil;
    [sunFirstMeridian release];
    sunFirstMeridian = nil;
    [monSecondMeridian release];
    monSecondMeridian = nil;
    [tueSecondMeridian release];
    tueSecondMeridian = nil;
    [wedSecondMeridian release];
    wedSecondMeridian = nil;
    [thuSecondMeridian release];
    thuSecondMeridian = nil;
    [friSecondMeridian release];
    friSecondMeridian = nil;
    [satSecondMeridian release];
    satSecondMeridian = nil;
    [sunSecondMeridian release];
    sunSecondMeridian = nil;
    [startTue release];
    startTue = nil;
    [startWed release];
    startWed = nil;
    [startThu release];
    startThu = nil;
    [startFri release];
    startFri = nil;
    [startSat release];
    startSat = nil;
    [startSun release];
    startSun = nil;
    [endMon release];
    endMon = nil;
    [endTue release];
    endTue = nil;
    [endWed release];
    endWed = nil;
    [endThu release];
    endThu = nil;
    [endFri release];
    endFri = nil;
    [endSat release];
    endSat = nil;
    [endSun release];
    endSun = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [startMon resignFirstResponder];
    [startTue resignFirstResponder];
    [startWed resignFirstResponder];
    [startThu resignFirstResponder];
    [startFri resignFirstResponder];
    [startSat resignFirstResponder];
    [startSun resignFirstResponder];
    
    [monFirstMeridian resignFirstResponder];
    [tueFirstMeridian resignFirstResponder];
    [wedFirstMeridian resignFirstResponder];
    [thuFirstMeridian resignFirstResponder];
    [friFirstMeridian resignFirstResponder];
    [satFirstMeridian resignFirstResponder];
    [sunFirstMeridian resignFirstResponder];
    
    [monSecondMeridian resignFirstResponder];
    [tueSecondMeridian resignFirstResponder];
    [wedSecondMeridian resignFirstResponder];
    [thuSecondMeridian resignFirstResponder];
    [friSecondMeridian resignFirstResponder];
    [satSecondMeridian resignFirstResponder];
    [sunSecondMeridian resignFirstResponder];
    
    [endMon resignFirstResponder];
    [endTue resignFirstResponder];
    [endWed resignFirstResponder];
    [endThu resignFirstResponder];
    [endFri resignFirstResponder];
    [endSat resignFirstResponder];
    [endSun resignFirstResponder];
    return YES;
}
- (void)dealloc {
    [labelMon release];
    [labelTue release];
    [labelWed release];
    [labelThu release];
    [labelFri release];
    [labelSat release];
    [labelSun release];
    [startMon release];
    [monFirstMeridian release];
    [tueFirstMeridian release];
    [wedFirstMeridian release];
    [thuFirstMeridian release];
    [friFirstMeridian release];
    [satFirstMeridian release];
    [sunFirstMeridian release];
    [monSecondMeridian release];
    [tueSecondMeridian release];
    [wedSecondMeridian release];
    [thuSecondMeridian release];
    [friSecondMeridian release];
    [satSecondMeridian release];
    [sunSecondMeridian release];
    [startTue release];
    [startWed release];
    [startThu release];
    [startFri release];
    [startSat release];
    [startSun release];
    [endMon release];
    [endTue release];
    [endWed release];
    [endThu release];
    [endFri release];
    [endSat release];
    [endSun release];
    [startTimeArray release];
  //  [endTimeArray release];
    [super dealloc];
}

- (void) validateTimings
{
    if(
       ([startMon.text length] == 0) || ([startTue.text length] == 0) ||
       ([startWed.text length] == 0) || ([startThu.text length] == 0) || 
       ([startFri.text length] == 0) || ([startSat.text length] == 0) || 
       ([startSun.text length] == 0) || ([endMon.text length] == 0)  ||
       ([endTue.text length] == 0) || ([endWed.text length] == 0) ||
       ([endThu.text length] == 0) || ([endFri.text length] == 0) ||
       ([endSat.text length] == 0) || ([endSun.text length] == 0) ||
       ([monFirstMeridian.text length] == 0) || ([tueFirstMeridian.text length] == 0) ||
       ([wedFirstMeridian.text length] == 0) || ([thuFirstMeridian.text length] == 0) ||
       ([friFirstMeridian.text  length] == 0) || ([satFirstMeridian.text length] == 0) ||
       ([sunFirstMeridian.text length] == 0) || ([monSecondMeridian.text length] == 0) ||
       ([tueSecondMeridian.text length] == 0) || ([wedSecondMeridian.text length] == 0) ||
       ([thuSecondMeridian.text length] == 0) || ([friSecondMeridian.text length] == 0) ||git
       ([satSecondMeridian.text length] == 0) || ([sunSecondMeridian.text length] == 0)
       )
    {
        NSLog(@"Empty Fields");
        validTimeFlag = false;
    }
    else 
    {
        
        if ([monFirstMeridian.text isEqualToString:@"pm"] && [monSecondMeridian.text isEqualToString:@"am"])
    {
        validTimeFlag = false;
    }
    else if([monFirstMeridian.text isEqualToString:@"am"] && [monSecondMeridian.text isEqualToString:@"am"])
    {
        if([startMon.text intValue] > [endMon.text intValue])
        {
            validTimeFlag = false;
        }
    }
    else if([monFirstMeridian.text isEqualToString:@"pm"] && [monSecondMeridian.text isEqualToString:@"pm"])
    {
        if([startMon.text intValue] > [endMon.text intValue])
        {
            validTimeFlag = false;
        }
    }
    
    if ([tueFirstMeridian.text isEqualToString:@"pm"] && [tueSecondMeridian.text isEqualToString:@"am"])
    {
        validTimeFlag = false;
    }
    else if([tueFirstMeridian.text isEqualToString:@"am"] && [tueSecondMeridian.text isEqualToString:@"am"])
    {
        if([startTue.text intValue] > [endTue.text intValue])
        {
            validTimeFlag = false;
        }
    }
    else if([tueFirstMeridian.text isEqualToString:@"pm"] && [tueSecondMeridian.text isEqualToString:@"pm"])
    {
        if([startTue.text intValue] > [endTue.text intValue])
        {
            validTimeFlag = false;
        }
    }
    
    if ([wedFirstMeridian.text isEqualToString:@"pm"] && [wedSecondMeridian.text isEqualToString:@"am"])
    {
        validTimeFlag = false;
    }
    else if([wedFirstMeridian.text isEqualToString:@"am"] && [wedSecondMeridian.text isEqualToString:@"am"])
    {
        if([startWed.text intValue] > [endWed.text intValue])
        {
            validTimeFlag = false;
        }
    }
    else if([wedFirstMeridian.text isEqualToString:@"pm"] && [wedSecondMeridian.text isEqualToString:@"pm"])
    {
        if([startWed.text intValue] > [endWed.text intValue])
        {
            validTimeFlag = false;
        }
    }
    
    if ([thuFirstMeridian.text isEqualToString:@"pm"] && [thuSecondMeridian.text isEqualToString:@"am"])
    {
        validTimeFlag = false;
    }
    else if([thuFirstMeridian.text isEqualToString:@"am"] && [thuSecondMeridian.text isEqualToString:@"am"])
    {
        if([startThu.text intValue] > [endThu.text intValue])
        {
            validTimeFlag = false;
        }
    }
    else if([thuFirstMeridian.text isEqualToString:@"pm"] && [thuSecondMeridian.text isEqualToString:@"pm"])
    {
        if([startThu.text intValue] > [endThu.text intValue])
        {
            validTimeFlag = false;
        }
    }
    if ([friFirstMeridian.text isEqualToString:@"pm"] && [friSecondMeridian.text isEqualToString:@"am"])
    {
        validTimeFlag = false;
    }
    else if([friFirstMeridian.text isEqualToString:@"am"] && [friSecondMeridian.text isEqualToString:@"am"])
    {
        if([startFri.text intValue] > [endFri.text intValue])
        {
            validTimeFlag = false;
        }
    }
    else if([friFirstMeridian.text isEqualToString:@"pm"] && [friSecondMeridian.text isEqualToString:@"pm"])
    {
        if([startFri.text intValue] > [endFri.text intValue])
        {
            validTimeFlag = false;
        }
    }
    
    if ([satFirstMeridian.text isEqualToString:@"pm"] && [satSecondMeridian.text isEqualToString:@"am"])
    {
        validTimeFlag = false;
    }
    else if([satFirstMeridian.text isEqualToString:@"am"] && [satSecondMeridian.text isEqualToString:@"am"])
    {
        if([startSat.text intValue] > [endSat.text intValue])
        {
            validTimeFlag = false;
        }
    }
    else if([satFirstMeridian.text isEqualToString:@"pm"] && [satSecondMeridian.text isEqualToString:@"pm"])
    {
        if([startSat.text intValue] > [endSat.text intValue])
        {
            validTimeFlag = false;
        }
    }
    if ([sunFirstMeridian.text isEqualToString:@"pm"] && [sunSecondMeridian.text isEqualToString:@"am"])
    {
        validTimeFlag = false;
    }
    else if([sunFirstMeridian.text isEqualToString:@"am"] && [sunSecondMeridian.text isEqualToString:@"am"])
    {
        if([startSun.text intValue] > [endSun.text intValue])
        {
            validTimeFlag = false;
          
        }
    }
    else if([sunFirstMeridian.text isEqualToString:@"pm"] && [sunSecondMeridian.text isEqualToString:@"pm"])
    {
        if([startSun.text intValue] > [endSun.text intValue])
        {
            validTimeFlag = false;
           
        }
    }
    }
    
}


-(void)getValues
{
    TimeClass *time1=[[TimeClass alloc]init];
    NSString *monStart=[NSString stringWithFormat:@"%@ %@",startMon.text,monFirstMeridian.text];
    NSString *monEnd=[NSString stringWithFormat:@"%@ %@",endMon.text,monSecondMeridian.text];
    
    time1.day=labelMon.text;
    time1.startTime=monStart;
    time1.endTime=monEnd;
    
    [startTimeArray addObject:time1];    
    [time1 release];
    
    TimeClass *time2=[[TimeClass alloc]init];
    NSString *tueStart=[NSString stringWithFormat:@"%@ %@",startTue.text,tueFirstMeridian.text];
    NSString *tueEnd=[NSString stringWithFormat:@"%@ %@",endTue.text,tueSecondMeridian.text];
    
    time2.day=labelTue.text;
    time2.startTime=tueStart;
    time2.endTime=tueEnd;
    
    [startTimeArray addObject:time2];    
    [time2 release];
    
    TimeClass *time3=[[TimeClass alloc]init];
    NSString *wedStart=[NSString stringWithFormat:@"%@ %@",startWed.text,wedFirstMeridian.text];
    NSString *wedEnd=[NSString stringWithFormat:@"%@ %@",endWed.text,wedSecondMeridian.text];
    
    time3.day=labelWed.text;
    time3.startTime=wedStart;
    time3.endTime=wedEnd;
    
    [startTimeArray addObject:time3];    
    [time3 release];
    
    TimeClass *time4=[[TimeClass alloc]init];
    NSString *thuStart=[NSString stringWithFormat:@"%@ %@",startThu.text,thuFirstMeridian.text];
    NSString *thuEnd=[NSString stringWithFormat:@"%@ %@",endThu.text,thuSecondMeridian.text];
    
    time4.day=labelThu.text;
    time4.startTime=thuStart;
    time4.endTime=thuEnd;
    
    [startTimeArray addObject:time4];    
    [time4 release];
    
    TimeClass *time5=[[TimeClass alloc]init];
    NSString *friStart=[NSString stringWithFormat:@"%@ %@",startFri.text,friFirstMeridian.text];
    NSString *friEnd=[NSString stringWithFormat:@"%@ %@",endFri.text,friSecondMeridian.text];
    
    time5.day=labelFri.text;
    time5.startTime=friStart;
    time5.endTime=friEnd;
    
    [startTimeArray addObject:time5];    
    [time5 release];
    
    TimeClass *time6=[[TimeClass alloc]init];    
    NSString *satStart=[NSString stringWithFormat:@"%@ %@",startSat.text,satFirstMeridian.text];
    NSString *satEnd=[NSString stringWithFormat:@"%@ %@",endSat.text,satSecondMeridian.text];
    
    time6.day=labelSat.text;
    time6.startTime=satStart;
    time6.endTime=satEnd;
    
    [startTimeArray addObject:time6];    
    [time6 release];
    
    TimeClass *time7=[[TimeClass alloc]init];
    NSString *sunStart=[NSString stringWithFormat:@"%@ %@",startSun.text,sunFirstMeridian.text];
    NSString *sunEnd=[NSString stringWithFormat:@"%@ %@",endSun.text,sunSecondMeridian.text];
    
    time7.day=labelSun.text;
    time7.startTime=sunStart;
    time7.endTime=sunEnd;
    
    [startTimeArray addObject:time7];    
    [time7 release];
    
    for(TimeClass *t in startTimeArray)
    {
        NSLog(@"Chart: %@ %@ %@",t.day,t.startTime,t.endTime);
    }
    
}
-(void)clearTextFields
{
      startMon.text =@"";
       startTue.text =@"";    
       startWed.text =@"";    
        startThu.text =@"";    
        startFri.text =@"";    
        startSat.text =@"";    
        startSun.text =@"";    
    
        endMon.text =@"";
        endTue.text =@"";
        endWed.text =@"";
        endThu.text =@"";    
        endFri.text =@"";    
        endSat.text =@"";    
        endSun.text =@""; 
    
        monFirstMeridian.text =@"";    
        tueFirstMeridian.text =@"";    
        wedFirstMeridian.text =@"";    
        thuFirstMeridian.text =@"";    
        friFirstMeridian.text =@"";    
        satFirstMeridian.text =@"";    
        sunFirstMeridian.text =@"";
    
        monSecondMeridian.text =@"";
        tueSecondMeridian.text =@"";    
        wedSecondMeridian.text =@"";
        thuSecondMeridian.text =@"";
        friSecondMeridian.text =@"";
        satSecondMeridian.text =@"";
        sunSecondMeridian.text =@"";  
}
- (IBAction)buttonSubmit:(id)sender 
{
    validTimeFlag = true;
    [self getValues];
    [self validateTimings];
    if (validTimeFlag == true) 
    {
        
        DisplayViewController *display=[[DisplayViewController alloc] initWithArray:startTimeArray];
        [self.navigationController pushViewController:display animated:YES];
        //  [self presentModalViewController:display animated:YES];
        [self clearTextFields];
        [display release]; 
    }
    else
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Error !!" message:@"Invalid Time inserted" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
    }
  
    
}
-(void)textFieldDidBeginEditing:(UITextField *)textField
{}
@end
