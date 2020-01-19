//
//  Singleton.m
//  Labb 1. Appen om mig
//
//  Created by Anton Gottfredsson on 2020-01-15.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import "Singleton.h"
#import <UIKit/UIKit.h>

@implementation Singleton

static Singleton *instance = nil;

+ (id) Instance {
    if (instance == nil) {
        instance = [[Singleton alloc] init];
        [[Singleton Instance] SetData:UIColor.whiteColor];
        
    }
    
    return instance;
}

- (void) SetData:(UIColor*)value	{
    data = value;
}
- (UIColor*) GetData {
    return data;
}

@end
