//
//  RITViewController.m
//  20OutletsTestHW
//
//  Created by Pronin Alexander on 01.03.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITViewController.h"

@interface RITViewController ()

@end

@implementation RITViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initializeProperties];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSUInteger) supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    [self shuffleCheckers];
    
    [self changeColor];
}

#pragma mark - Helper methods

- (void) initializeProperties {
    
    self.chessboard.center = CGPointMake(CGRectGetWidth(self.view.bounds) / 2, CGRectGetHeight(self.view.bounds) / 2);
    
}

- (void) shuffleCheckers {
    
    NSMutableArray* cells           = [NSMutableArray arrayWithArray:self.cells];
    
    for (UIView* checker in self.checkers) {
        NSUInteger emptyCells       = [cells count];
        NSUInteger cellIndex        = arc4random() % emptyCells;
        UIView* cell                = cells[cellIndex];
        checker.center              = cell.center;
        [cells removeObjectAtIndex:cellIndex];
    }
    
}

- (void) changeColor {
    
    UIColor* color;
    
    switch (arc4random() % 15) {
            
        case 0:
            color = [UIColor blackColor];
            break;
            
        case 1:
            color = [UIColor darkGrayColor];
            break;
            
        case 2:
            color = [UIColor lightGrayColor];
            break;
            
        case 3:
            color = [UIColor grayColor];
            break;
            
        case 4:
            color = [UIColor redColor];
            break;
            
        case 5:
            color = [UIColor greenColor];
            break;
            
        case 6:
            color = [UIColor blueColor];
            break;
            
        case 7:
            color = [UIColor cyanColor];
            break;
            
        case 8:
            color = [UIColor yellowColor];
            break;
            
        case 9:
            color = [UIColor magentaColor];
            break;
            
        case 10:
            color = [UIColor orangeColor];
            break;
            
        case 11:
            color = [UIColor purpleColor];
            break;
            
        case 12:
            color = [UIColor brownColor];
            break;
    }
    
    for (UIView* view in self.cells) {
        view.backgroundColor = color;
    }
}

@end
