//
//  ViewController.h
//  FirstApp
//
//  Created by Miguel Grado on 3/15/16.
//  Copyright © 2016 Miguel Grado. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *hundredPercentButton;

- (IBAction)changeColor:(id)sender;

@end
