//
//  ApplePaymentService.m
//  Payments
//
//  Created by WendaLi on 2020-04-05.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (void) processPaymentAmount: (NSInteger) amount
{
    NSLog(@"Apple %ld", (long)amount);
}

- (BOOL) canProcessPayment
{
    int randomYESOrNo = arc4random_uniform(2);
    if (randomYESOrNo == 1) {
        return YES;
    }else {
        return NO;
    }
}

@end
