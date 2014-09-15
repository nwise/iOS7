//
//  ViewController.h
//  ProtienTracker
//
//  Created by Nathan Wise on 9/15/14.
//  Copyright (c) 2014 WiseIdeas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryViewController.h"

@interface MainViewController : UIViewController {
    int total;
    NSMutableArray *amountHistory;
}
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalLabel;
@property (weak, nonatomic) IBOutlet UITextField *amountText;
- (IBAction)addButton:(id)sender;
-(IBAction)unwindToMain:(UIStoryboardSegue *)segue;
@end
