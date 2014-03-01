//
//  RITViewController.h
//  20OutletsTestHW
//
//  Created by Pronin Alexander on 01.03.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RITViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIView *chessboard;
@property (weak, nonatomic) IBOutlet UIView *whiteBox;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *cells;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *checkers;

@end
