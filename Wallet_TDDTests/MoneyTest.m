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

- (void)testAmountStorage {
  
  Money *money = [[Money alloc] initWithAmount:2];
  //  XCTAssertEqual(2, [euro amount],@"The value retrieved should be the same as the stored");
  //  XCTAssertEqualObjects(@(2),[euro performSelector:@selector(amount)],@"The value retrieved should be the same as the stored");
  
  // Vamos a hacer que el compilador se calle:
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
  
  XCTAssertEqual(2,[[money performSelector:@selector(amount)] integerValue],@"The value retrieved should be the same as the stored");
  
#pragma clang diagnostic pop
  
}

@end
