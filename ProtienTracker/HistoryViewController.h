//
//  HistoryViewController.h
//  ProtienTracker
//
//  Created by Nathan Wise on 9/15/14.
//  Copyright (c) 2014 WiseIdeas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController{
    NSMutableArray *history;
}
@property (weak, nonatomic) IBOutlet UILabel *historyLabel;
-(void)setHistory:(NSMutableArray *)h;
@end
