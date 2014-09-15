//
//  ViewController.m
//  ProtienTracker
//
//  Created by Nathan Wise on 9/15/14.
//  Copyright (c) 2014 WiseIdeas. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if(self){
        amountHistory = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButton:(id)sender {
    total += self.amountText.text.intValue;
    self.totalLabel.text = [NSString stringWithFormat: @"%d", total];
    [amountHistory addObject:[NSNumber numberWithInt:self.amountText.text.intValue]];
}
-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:TRUE];
}

-(void)unwindToMain:(UIStoryboardSegue *)segue{
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"showHistory"]){
        HistoryViewController *controller = (HistoryViewController *)segue.destinationViewController;
        [controller setHistory:amountHistory];
    }
}
@end
