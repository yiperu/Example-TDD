//
//  DolarTest.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Dolar.h"

@interface DolarTest : XCTestCase

@end

@implementation DolarTest

- (void)testMultiplicacion {
  
  Dolar * five = [Money dollarWithAmount:5];
  
  XCTAssertEqualObjects([Money dollarWithAmount:10], [five times:2],@"Both euros should be Equal");
  XCTAssertEqualObjects([Money dollarWithAmount:15], [five times:3],@"Both euros should be Equal");
}


- (void)testEquality {
  
  Dolar *five = [Money dollarWithAmount:5];
  Dolar *ten = [Money dollarWithAmount:10];
  Dolar *total = [five times:2];
  
  XCTAssertEqualObjects(ten, total, @"Equivalent Object should be Equal!");
  // Cuando compruebas algo binario, es recomendable comprobar ambos casos:
  XCTAssertFalse([total isEqual:five], @"Non Equivalent objects should no be Equal");
  
}

- (void)testHash {
  
  Dolar * a = [Money dollarWithAmount:1];
  Dolar * b = [Money dollarWithAmount:1];
  
  XCTAssertEqual([a hash], [b hash], @"Equal objects must have same hash");
}

- (void)testAmountStorage {
  
  Dolar *dolar = [Money dollarWithAmount:2];
  //  XCTAssertEqual(2, [euro amount],@"The value retrieved should be the same as the stored");
  //  XCTAssertEqualObjects(@(2),[euro performSelector:@selector(amount)],@"The value retrieved should be the same as the stored");
  
  // Vamos a hacer que el compilador se calle:
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
  
  XCTAssertEqual(2,[[dolar performSelector:@selector(amount)] integerValue],@"The value retrieved should be the same as the stored");
  
#pragma clang diagnostic pop
  
}


@end
