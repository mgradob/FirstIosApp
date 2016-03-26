//
//  FavoritesViewController.m
//  FirstApp
//
//  Created by Miguel Grado on 3/25/16.
//  Copyright © 2016 Miguel Grado. All rights reserved.
//

#import "FavoritesViewController.h"

@implementation FavoritesViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        self.title = @"Favorites";
        self.tabBarItem.image = [UIImage imageNamed:@"favs"];
    }
    
    return self;
}

-(void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
}

@end
