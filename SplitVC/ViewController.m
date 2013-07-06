//
//  ViewController.m
//  SplitVC
//
//  Created by LLBER on 04/12/12.
//  Copyright (c) 2012 LLBER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,weak) IBOutlet UILabel *label;
@property (nonatomic, weak) IBOutlet UIToolbar *toolbar;

@property (nonatomic, weak) UIPopoverController * popover;


@end

@implementation ViewController

@synthesize toolbar = _toolbar;
@synthesize label = _label;

@synthesize popover;


-(void) setDetails:(NSString *)msg {
    
    self.label.text = msg;
    
    if (self.popover) {
        [self.popover dismissPopoverAnimated:YES];
    }
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    self.splitViewController.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc {
    
    barButtonItem.title = @"Ver Master";
    
    NSMutableArray * array = [self.toolbar.items mutableCopy];
    [array insertObject:barButtonItem atIndex:0];
    self.toolbar.items = array;
    
    self.popover = pc;
    
    
}

-(void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem {
    
    
    NSMutableArray * array = [self.toolbar.items mutableCopy];
    [array removeObject:barButtonItem];
    self.toolbar.items = array;
    
    
    self.popover = nil;
    
    
    
}





@end





















