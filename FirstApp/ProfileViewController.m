//
//  ProfileViewController.m
//  FirstApp
//
//  Created by Miguel Grado on 3/25/16.
//  Copyright © 2016 Miguel Grado. All rights reserved.
//

#import "ProfileViewController.h"

@implementation ProfileViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Profile";
        self.tabBarItem.image = [UIImage imageNamed:@"profile"];
    }
    
    return self;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIImageView *profileIV = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"mgb.jpg"]];
    [profileIV setContentMode:UIViewContentModeScaleAspectFit];
    profileIV.frame = self.view.frame;
    [self.view addSubview:profileIV];
}

@end
