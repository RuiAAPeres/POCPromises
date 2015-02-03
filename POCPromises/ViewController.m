//
//  ViewController.m
//  POCPromises
//
//  Created by Rui Peres on 03/02/2015.
//  Copyright (c) 2015 Rui Peres. All rights reserved.
//

#import "ViewController.h"


#import "ViewControllerFutureFactory.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)pushStuff:(id)sender
{
    UIViewController<FutureContructor> *vc = [ViewControllerFutureFactory viewControllerFromMapping:ViewControllerForSpecialEffectsMapping];
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
