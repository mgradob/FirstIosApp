//
//  FeedViewController.m
//  FirstApp
//
//  Created by Miguel Grado on 3/25/16.
//  Copyright © 2016 Miguel Grado. All rights reserved.
//

#import "FeedViewController.h"

@implementation FeedViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Feed";
        self.tabBarItem.image = [UIImage imageNamed:@"feed"];
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
}

@end
