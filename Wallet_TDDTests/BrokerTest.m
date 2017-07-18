//
//  BrokerTest.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/9/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Broker.h"
#import "Money.h"

@interface BrokerTest : XCTestCase
@property (nonatomic, strong) Broker * emptyBroker;
@property (nonatomic, strong) Money *oneDollar;
@end

@implementation BrokerTest

- (void)setUp {
    [super setUp];
  self.emptyBroker = [[Broker alloc] init];
  self.oneDollar = [Money dollarWithAmount:1];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
  self.emptyBroker = nil;
  self.oneDollar = nil;
    [super tearDown];
}

- (void)testSimpleReduction {
  
  Money *sum = [[Money dollarWithAmount:5] plus:[Money dollarWithAmount:5]];
  
  Money *reduced = [self.emptyBroker reduce:sum toCurrency:@"USD"];
  
  XCTAssertEqualObjects(sum, reduced, @"Conversion to same currency should be a NOP");

}

// $10 == e5 2:1
- (void)testReduction {

  [self.emptyBroker addRate:2.0 fromCurrency:@"USD" toCurrency:@"EUR"];
  
  Money *dollar = [Money dollarWithAmount:10];
  Money *euros = [Money euroWithAmount:5];
  
  Money *converter = [self.emptyBroker reduce:dollar toCurrency:@"EUR"];
  
  XCTAssertEqualObjects(converter, euros,@"$10 = e5 2:1");

}

// Con esto no aseguramoe que simepre que intentamos hacer una conversion y no hay tasa de conversion , deberia dar una exepcion.
- (void)testThatNoRateRaisesException {
  
  XCTAssertThrows([self.emptyBroker reduce:self.oneDollar toCurrency:@"EUR"],@"No rate ahould cause exception");
}

// Una conversion nula no deberia tener ningun efecto
- (void)testThatNilConversionDoesNotChangeMoney {
  XCTAssertEqualObjects(self.oneDollar, [self.emptyBroker reduce:self.oneDollar toCurrency:@"USD"],@"A nil conversion should have no effect");
  
}

@end
