//
//  ViewController.m
//  Labb 1. Appen om mig
//
//  Created by Anton Gottfredsson on 2020-01-09.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"





@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewWillAppear:(BOOL)animated {
    self.view.backgroundColor = [[Singleton Instance] GetData];
}


@end
