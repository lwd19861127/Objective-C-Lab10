//
//  PaypalPaymentService.m
//  Payments
//
//  Created by WendaLi on 2020-04-05.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void) processPaymentAmount: (NSInteger) amount
{
    NSLog(@"Paypal %ld", (long)amount);
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
