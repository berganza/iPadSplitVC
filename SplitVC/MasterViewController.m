//
//  MasterViewController.m
//  SplitVC
//
//  Created by LLBER on 04/12/12.
//  Copyright (c) 2012 LLBER. All rights reserved.
//

#import "MasterViewController.h"
#import "ViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

- (IBAction)buttonPressed:(id)sender {
    
    NSString * str = [sender titleForState:UIControlStateNormal];
    ViewController *dvc = [self.splitViewController.viewControllers lastObject];
    [dvc setDetails:str];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
