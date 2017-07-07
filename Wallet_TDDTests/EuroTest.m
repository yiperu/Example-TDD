//
//  EuroTest.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/3/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Euro.h"


// Esta es la forma mas rapida de acceder a las partes privadas de una clase
//@interface Euro ()
//
//@property (nonatomic) NSInteger amount;
//
//@end

@interface EuroTest : XCTestCase

@end

@implementation EuroTest

- (void)testMultiplicacion {
  
  Euro * five = [[Euro alloc] initWithAmount:5];
  
  XCTAssertEqualObjects([[Euro alloc] initWithAmount:10], [five times:2],@"Both euros should be Equal");
  XCTAssertEqualObjects([[Euro alloc] initWithAmount:15], [five times:3],@"Both euros should be Equal");  
}


- (void)testEquality {
  
  Euro *five = [[Euro alloc] initWithAmount:5];
  Euro *ten = [[Euro alloc] initWithAmount:10];
  Euro *total = [five times:2];
  
  XCTAssertEqualObjects(ten, total, @"Equivalent Object should be Equal!");
  
}

- (void)testHash {
  
  Euro * a = [[Euro alloc] initWithAmount:1];
  Euro * b = [[Euro alloc] initWithAmount:1];
  
  XCTAssertEqual([a hash], [b hash], @"Equal objects must have same hash");
}

- (void)testAmountStorage {
  
  Euro *euro = [[Euro alloc] initWithAmount:2];
//  XCTAssertEqual(2, [euro amount],@"The value retrieved should be the same as the stored");
//  XCTAssertEqualObjects(@(2),[euro performSelector:@selector(amount)],@"The value retrieved should be the same as the stored");
  
  // Vamos a hacer que el compilador se calle:
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
  
  XCTAssertEqual(2,[[euro performSelector:@selector(amount)] integerValue],@"The value retrieved should be the same as the stored");
  
#pragma clang diagnostic pop
  
}

@end
