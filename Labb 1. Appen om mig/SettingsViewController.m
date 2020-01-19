//
//  SettingsViewController.m
//  Labb 1. Appen om mig
//
//  Created by Anton Gottfredsson on 2020-01-13.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "SettingsViewController.h"
#import "Singleton.h"

@interface SettingsViewController ()




@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [[Singleton Instance] GetData];
    
    [self.navigationItem setTitle:@"Settings"];
    
    
}

- (IBAction)btnBlue:(id)sender {
   [[Singleton Instance] SetData:UIColor.blueColor];
   self.view.backgroundColor = [[Singleton Instance] GetData];
}

- (IBAction)btnRed:(id)sender {
    [[Singleton Instance] SetData:UIColor.redColor];
    self.view.backgroundColor = [[Singleton Instance] GetData];
}

- (IBAction)btnYellow:(id)sender {
    [[Singleton Instance] SetData:UIColor.yellowColor];
    self.view.backgroundColor = [[Singleton Instance] GetData];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
