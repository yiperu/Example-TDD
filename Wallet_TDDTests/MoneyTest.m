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


- (void)testAmountStorage {
  
  Money *money = [[Money alloc] initWithAmount:2 andCurrency:@"USD"];
  
  Money *euro = [Money euroWithAmount:2];
  Money *dolar = [Money dollarWithAmount:2];
  //  XCTAssertEqual(2, [euro amount],@"The value retrieved should be the same as the stored");
  //  XCTAssertEqualObjects(@(2),[euro performSelector:@selector(amount)],@"The value retrieved should be the same as the stored");
  
  // Vamos a hacer que el compilador se calle para este warning:
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
  
  XCTAssertEqual(2,[[money performSelector:@selector(amount)] integerValue],@"The value retrieved should be the same as the stored");
  
  XCTAssertEqual(2,[[euro performSelector:@selector(amount)] integerValue],@"The value retrieved should be the same as the stored");
  XCTAssertEqual(2,[[dolar performSelector:@selector(amount)] integerValue],@"The value retrieved should be the same as the stored");
  
#pragma clang diagnostic pop
  
}


- (void)testCurriencies {
  
  
  XCTAssertEqualObjects([[Money euroWithAmount:1] currency], @"EUR",@"Should be Equal");
  XCTAssertEqualObjects([[Money dollarWithAmount:1] currency], @"USD",@"Should be Equal");

}



- (void)testMultiplicacion {
  
  Money * five = [Money euroWithAmount:5];
  Money * fiveDolar = [Money dollarWithAmount:5];
  
  XCTAssertEqualObjects([Money euroWithAmount:10], [five times:2],@"Both euros should be Equal");
  XCTAssertEqualObjects([Money euroWithAmount:15], [five times:3],@"Both euros should be Equal");
  
  XCTAssertEqualObjects([Money dollarWithAmount:10], [fiveDolar times:2],@"Both euros should be Equal");
  XCTAssertEqualObjects([Money dollarWithAmount:15], [fiveDolar times:3],@"Both euros should be Equal");
}


- (void)testEquality {
  
  Money *five = [Money euroWithAmount:5];
  Money *ten = [Money euroWithAmount:10];
  Money *total = [five times:2];
  
  XCTAssertEqualObjects(ten, total, @"Equivalent Object should be Equal!");
  
  XCTAssertEqualObjects([Money dollarWithAmount:10], [[Money dollarWithAmount:5] times:2], @"Equivalent Object should be Equal!");
  
}

- (void)testHash {
  
  Money * a = [Money euroWithAmount:1];
  Money * b = [Money euroWithAmount:1];
  
  XCTAssertEqual([a hash], [b hash], @"Equal objects must have same hash");
  XCTAssertEqual([[Money dollarWithAmount:1] hash], [[Money dollarWithAmount:1] hash], @"Equal objects must have same hash");
}


@end
