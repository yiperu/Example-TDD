//
//  Money.h
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Money : NSObject

+ (id)euroWithAmount:(NSInteger)amount;
+ (id)dollarWithAmount:(NSInteger)amount;

- (instancetype)initWithAmount:(NSInteger)amount;
- (id)times:(NSUInteger)multiplier;

@end
