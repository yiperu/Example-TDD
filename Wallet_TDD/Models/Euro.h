//
//  Euro.h
//  Wallet_TDD
//
//  Created by Henry AT on 7/3/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Euro : NSObject

@property (nonatomic, readonly) NSUInteger amount;

- (instancetype)initWithAmount:(NSUInteger)amount;
- (void)times:(NSUInteger)multiplier;

@end
