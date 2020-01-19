//
//  GameViewController.m
//  Labb 1. Appen om mig
//
//  Created by Anton Gottfredsson on 2020-01-10.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "GameViewController.h"
#import "Singleton.h"

@interface GameViewController ()

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *sliderNumber;
@property (weak, nonatomic) IBOutlet UILabel *userFeedback;
@property (weak, nonatomic) IBOutlet UILabel *attemptsOutput;

@end

@implementation GameViewController

int randomNumber = 0;
int attempts = 1;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [[Singleton Instance] GetData];
    
    self.navigationItem.title = @"Game page";
    randomNumber = arc4random() % 100;
    
}

- (IBAction)sliderChange:(id)sender {
    
    float f = self.slider.value;
    int userGuess = (int) f;
    NSString *myString = [NSString stringWithFormat:@"%i", userGuess];
    self.sliderNumber.text = myString;
}

- (IBAction)guessBtn:(id)sender {
    float f = self.slider.value;
    int userGuess = (int) f;
    NSString *finalAttempts = [NSString stringWithFormat:@"%d", attempts];
    
    if (randomNumber == userGuess) {
        attempts++;
        
        self.userFeedback.text = [NSString stringWithFormat:@"Good job! It took you %@ attempts", finalAttempts];
    }   else if (userGuess > randomNumber) {
        attempts++;
        self.userFeedback.text = @"The number is smaller than that, try again!";
    }   else if (userGuess < randomNumber) {
        attempts++;
        self.userFeedback.text = @"The number is bigger than that, try again!";
    }
    
    self.attemptsOutput.text = [NSString stringWithFormat:@"Attempts: %@", finalAttempts];
    
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
