//
//  MoneyTest.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Money.h"

@interface MoneyTest : XCTestCase

@end

@implementation MoneyTest

- (void)testThatTimesRaisesExeption {
  
  Money * money = [[Money alloc] initWithAmount:2];
  XCTAssertThrows([money times:3],@"Should raise and exception");
}

@end
