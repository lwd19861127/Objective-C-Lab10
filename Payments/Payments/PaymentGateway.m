//
//  PaymentGateway.m
//  Payments
//
//  Created by WendaLi on 2020-04-05.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount: (NSInteger) amount
{
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:amount];
    }else{
        NSLog(@"Payment cannot be processed.");
    }
    
}

@end
