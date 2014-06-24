//
//  SBSSpaceViewController.m
//  FactoryThing
//
//  Created by William Corrigan on 6/17/14.
//  Copyright (c) 2014 Spencer Merpi. All rights reserved.
//

#import "SBSSpaceViewController.h"

@interface SBSSpaceViewController ()

@end

@implementation SBSSpaceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // Load images
    NSArray *imageNames = @[@"kitchen@2x-18.png", @"open space 2 clear@2x.png", @"open space clear@2x.png", @"Slice Sheet -images-19.png", @"Slice Sheet -images-20.png"];

    NSArray *bgImageNames = @[@"kitchen.png", @"open space 2.png", @"openspace.png", @"skype room.png", @"meeting room.png"];

    // NSMutableArray *images = [[NSMutableArray alloc] init];
    // for (int i = 0; i < imageNames.count; i++) {
    //     [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    // }
    self.curImageIndex = 0;
    
    self.spaceImage.image = [UIImage imageNamed:[imageNames objectAtIndex:0]];
    self.spaceImageLead.image = [UIImage imageNamed:[imageNames objectAtIndex:4]];
    self.spaceImageTrail.image = [UIImage imageNamed:[imageNames objectAtIndex:0]];
    self.spaceBgImage.image = [UIImage imageNamed:[bgImageNames objectAtIndex:0]];
    
    // Add swipeGestures
    UISwipeGestureRecognizer * swipeleft=[[UISwipeGestureRecognizer alloc]
                                          initWithTarget:self
                                          action:@selector(swipeleft:)];
    swipeleft.direction=UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:swipeleft];

    UISwipeGestureRecognizer * swiperight=[[UISwipeGestureRecognizer alloc]
                                           initWithTarget:self
                                           action:@selector(swiperight:)];
    swiperight.direction=UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:swiperight];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
 */
-(void)swipeleft:(UISwipeGestureRecognizer*)gestureRecognizer
{
    self.curImageIndex--;
    if(self.curImageIndex < 0) {
        self.curImageIndex = 4;
    }
    
    NSLog(@"%@ %d", @"left", self.curImageIndex);

    // self.spaceImage.image = [UIImage imageNamed:[imageNames objectAtIndex:4]];
    // self.spaceBgImage.image = [UIImage imageNamed:[bgImageNames objectAtIndex:4]];
}

-(void)swiperight:(UISwipeGestureRecognizer*)gestureRecognizer
{
    self.curImageIndex++;
    if(self.curImageIndex >= 4) {
        self.curImageIndex = 0;
    }
    
    NSLog(@"%@ %d", @"right", self.curImageIndex);

    // self.spaceImage.image = [UIImage imageNamed:[imageNames objectAtIndex:1]];
    // self.spaceBgImage.image = [UIImage imageNamed:[bgImageNames objectAtIndex:1]];
}

@end
