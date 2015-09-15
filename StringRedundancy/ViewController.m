//
//  ViewController.m
//  StringRedundancy
//
//  Created by Ranjna Mishra on 15/09/15.
//  Copyright (c) 2015 Ranjna Mishra. All rights reserved.
//

#import "ViewController.h"

#import "StringTest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    StringTest *test = [[StringTest alloc] init:@"abaa"];
    [test removeRedundantChar];
    
  //  [test removeRedundant];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
