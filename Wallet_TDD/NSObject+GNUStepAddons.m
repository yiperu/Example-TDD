//
//  NSObject+GNUStepAddons.m
//  Wallet_TDD
//
//  Created by Henry AT on 7/5/17.
//  Copyright © 2017 Apps4s. All rights reserved.
//

#import "NSObject+GNUStepAddons.h"
#import <objc/runtime.h>

@implementation NSObject (GNUStepAddons)

//En ObjC las clases y las instancias son objetos, ambos son objetos
//Entonces la clase de la clase es una metaclase

- (id)subclassResponsibility: (SEL)aSel {
  
  char prefix = class_isMetaClass(object_getClass(self)) ? '+' : '-';
  [NSException raise:NSInvalidArgumentException format:@"%@%c%@ should be overriden by its subclass", NSStringFromClass([self class]), prefix, NSStringFromSelector(aSel)];
  
  return self; // not reached
  
}

@end
