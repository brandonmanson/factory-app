//
//  DismissSegue.m
//  FactoryThing
//
//  Created by Spencer Merpi on 5/27/14.
//  Copyright (c) 2014 Spencer Merpi. All rights reserved.
//

#import "DismissSegue.h"

@implementation DismissSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    [sourceViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
