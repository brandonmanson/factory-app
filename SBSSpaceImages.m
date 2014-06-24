//
//  SBSSpaceImages.m
//  FactoryThing
//
//  Created by William Corrigan on 6/22/14.
//  Copyright (c) 2014 Spencer Merpi. All rights reserved.
//

#import "SBSSpaceImages.h"

@interface SBSSpaceImages () {
    NSArray *imageNames;
    NSArray *bgImageNames;
}
@end

@implementation SBSSpaceImages

- (id)initWithTestData {
    self = [super init];
    if (self) {
        imageNames = @[@"kitchen@2x-18.png", @"open space 2 clear@2x.png", @"open space clear@2x.png", @"Slice Sheet -images-19.png", @"Slice Sheet -images-20.png"];
        
        // bgImageNames = @[@"kitchen.png", @"open space 2.png", @"openspace.png", @"skype room.png", @"meeting room.png"];
    }
    return self;
}

- (NSUInteger)curImageIndex {
    return [imageNames count];
}

@end
