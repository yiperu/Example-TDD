//
//  Money.h
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Money : NSObject

@property (nonatomic, strong) NSString *currency;
@property (nonatomic, strong, readonly) NSNumber *amount;

+ (id)euroWithAmount:(NSInteger)amount;
+ (id)dollarWithAmount:(NSInteger)amount;

- (instancetype)initWithAmount:(NSInteger)amount andCurrency:(NSString *)currency;
- (id)times:(NSUInteger)multiplier;
- (Money *)plus:(Money *)money;
@end
