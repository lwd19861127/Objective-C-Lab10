//
//  PaymentFactory.m
//  Payments
//
//  Created by WendaLi on 2020-04-05.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import "PaymentFactory.h"

@implementation PaymentFactory

- (PaymentGateway*) generateUserPayment: (NSInteger*) payment
{
    NSArray *paymentSubclassNames = @[@"PaypalPaymentService",@"StripePaymentService",@"AmazonPaymentService", @"ApplePaymentService"];
    return [[NSClassFromString(paymentSubclassNames[(int)payment-1]) alloc] init];
}

@end
