//
//  ViewController.m
//  FirstApp
//
//  Created by Miguel Grado on 3/15/16.
//  Copyright © 2016 Miguel Grado. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Set initial background color.
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Create a button.
    self.fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];        // Create the button object.
    self.fiftyPercentButton.frame = CGRectMake(100, 100, 100, 44);                               // Set start point and dimensions.
    [self.fiftyPercentButton setTitle:@"50 %" forState:UIControlStateNormal];               // Set title, and normal state.
    [self.fiftyPercentButton addTarget:self                                             // Add button touch sender (OnClickListener).
                                action:@selector(changeColor:)
                      forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.fiftyPercentButton];                                              // Add button as subview.
    
    // Create a button.
    self.hundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];      // Create the button object.
    self.hundredPercentButton.frame = CGRectMake(100, 200, 100, 44);                               // Set start point and dimensions.
    [self.hundredPercentButton setTitle:@"100 %" forState:UIControlStateNormal];               // Set title, and normal state.
    [self.hundredPercentButton addTarget:self                                           // Add button touch sender (OnClickListener).
                                  action:@selector(changeColor:)
                        forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.hundredPercentButton];
    
    UILabel *label = [[UILabel alloc]                                           // Create a label.
                      initWithFrame:CGRectMake(50, 30, 200, 44)];
    label.text = @"Hello world, first app!";                                    // Set the label text.
    [self.view addSubview:label];                                               // Add label as subview.
}

- (void)loadView {
    // Load the view with a size of the UI view.
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    UIView *view = [[UIView alloc] initWithFrame:viewRect];
    self.view = view;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Started touching the screen");
}


- (IBAction)changeColor:(id)sender {
    int r = arc4random() % 255;
    int g = arc4random() % 255;
    int b = arc4random() % 255;
    
    UIColor *color = [UIColor colorWithRed:(r/255.0) green:(g/255.0) blue:(b/255.0) alpha:1.0];
    
    [self.view setBackgroundColor:color];
    
    if([sender isEqual:self.fiftyPercentButton]) self.view.alpha = .5;
    else self.view.alpha = 1;
}

@end
