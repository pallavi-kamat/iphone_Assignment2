//
//  TimeChartController.h
//  TimeMachine
//
//  Created by nachi on 22/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimeChartController : UIViewController<UITextFieldDelegate>
{
    
    IBOutlet UITextField *startMon;
    IBOutlet UITextField *startTue;    
    IBOutlet UITextField *startWed;    
    IBOutlet UITextField *startThu;    
    IBOutlet UITextField *startFri;    
    IBOutlet UITextField *startSat;    
    IBOutlet UITextField *startSun;    
    
    IBOutlet UITextField *endMon;
    IBOutlet UITextField *endTue;
    IBOutlet UITextField *endWed;
    IBOutlet UITextField *endThu;    
    IBOutlet UITextField *endFri;    
    IBOutlet UITextField *endSat;    
    IBOutlet UITextField *endSun;  
    
    IBOutlet UITextField *monFirstMeridian;    
    IBOutlet UITextField *tueFirstMeridian;    
    IBOutlet UITextField *wedFirstMeridian;    
    IBOutlet UITextField *thuFirstMeridian;    
    IBOutlet UITextField *friFirstMeridian;    
    IBOutlet UITextField *satFirstMeridian;    
    IBOutlet UITextField *sunFirstMeridian;
    
    IBOutlet UITextField *monSecondMeridian;
    IBOutlet UITextField *tueSecondMeridian;    
    IBOutlet UITextField *wedSecondMeridian;
    IBOutlet UITextField *thuSecondMeridian;
    IBOutlet UITextField *friSecondMeridian;
    IBOutlet UITextField *satSecondMeridian;
    IBOutlet UITextField *sunSecondMeridian;    
    
    NSMutableArray *startTimeArray;
  //  NSMutableArray *endTimeArray;
    BOOL validTimeFlag;
    
}

@property (retain, nonatomic) IBOutlet UILabel *labelMon;
@property (retain, nonatomic) IBOutlet UILabel *labelTue;
@property (retain, nonatomic) IBOutlet UILabel *labelWed;
@property (retain, nonatomic) IBOutlet UILabel *labelThu;
@property (retain, nonatomic) IBOutlet UILabel *labelFri;
@property (retain, nonatomic) IBOutlet UILabel *labelSat;
@property (retain, nonatomic) IBOutlet UILabel *labelSun;


- (IBAction)buttonSubmit:(id)sender;

-(void)getValues;
- (void) validateTimings;
-(void)clearTextFields;

@end
