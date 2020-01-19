//
//  Singleton.h
//  Labb 1. Appen om mig
//
//  Created by Anton Gottfredsson on 2020-01-15.
//  Copyright © 2020 Anton Gottfredsson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject {
    UIColor *data;
}
+ (id) Instance;
- (void) SetData:(UIColor*) value;
- (UIColor*) GetData;

@end

NS_ASSUME_NONNULL_END
