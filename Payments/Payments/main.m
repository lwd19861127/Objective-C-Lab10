//
//  main.m
//  Payments
//
//  Created by WendaLi on 2020-04-05.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaymentFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int randomAmount = arc4random_uniform(901) + 100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%d Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", randomAmount);
        NSInteger userInput = [[InputHandler getUserInput:255 prompt:@""] integerValue];
        //PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        PaymentFactory *paymentFactory = [[PaymentFactory alloc] init];
        PaymentGateway *paymentGateway = [[PaymentGateway alloc] init];
        paymentGateway.paymentDelegate = [paymentFactory generateUserPayment:userInput];
        [paymentGateway processPaymentAmount:randomAmount];
    }
    return 0;
}
