//
//  AboutViewController.m
//  Labb 1. Appen om mig
//
//  Created by Anton Gottfredsson on 2020-01-10.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "AboutViewController.h"
#import "Singleton.h"

@interface AboutViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *circularImage;
@property (weak, nonatomic) IBOutlet UIButton *btnName;
@property (weak, nonatomic) IBOutlet UILabel *labelName;
@property (weak, nonatomic) IBOutlet UIButton *btnOld;
@property (weak, nonatomic) IBOutlet UILabel *labelOld;
@property (weak, nonatomic) IBOutlet UIButton *btnFrom;
@property (weak, nonatomic) IBOutlet UILabel *labelFrom;
@property (weak, nonatomic) IBOutlet UIButton *btnLiving;
@property (weak, nonatomic) IBOutlet UILabel *labelLiving;
@property (weak, nonatomic) IBOutlet UIButton *btnInterests;
@property (weak, nonatomic) IBOutlet UILabel *labelInterests;
@property (weak, nonatomic) IBOutlet UIButton *btnFuture;
@property (weak, nonatomic) IBOutlet UILabel *labelFuture;

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [[Singleton Instance] GetData];
    
    
    
    self.navigationItem.title = @"About me";

    self.circularImage.layer.cornerRadius = self.circularImage.frame.size.width/2;
    
    self.circularImage.clipsToBounds = YES;
}
- (IBAction)btnNamePressed:(id)sender {
    [self.labelName setHidden:NO];
    [self.btnName setHidden:YES];
}
- (IBAction)btnOldPressed:(id)sender {
    [self.labelOld setHidden:NO];
    [self.btnOld setHidden:YES];
}
- (IBAction)btnFromPressed:(id)sender {
    [self.labelFrom setHidden:NO];
    [self.btnFrom setHidden:YES];
}
- (IBAction)btnLivingPressed:(id)sender {
    [self.labelLiving setHidden:NO];
    [self.btnLiving setHidden:YES];
}
- (IBAction)btnInterests:(id)sender {
    [self.labelInterests setHidden:NO];
    [self.btnInterests setHidden:YES];
}
- (IBAction)btnFuturePressed:(id)sender {
    [self.labelFuture setHidden:NO];
    [self.btnFuture setHidden:YES];
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
