//
//  PARViewController.m
//  PARImageHelpers
//
//  Created by Anuj Seth on 2/11/13.
//  Copyright (c) 2013 Parabolic River. All rights reserved.
//

#import "PARViewController.h"
#import "UIImageView+ImageAdditions.h"
#import "UIImage+TintExtensions.h"

@interface PARViewController ()

@property (nonatomic, strong) UIImageView *normalGear;
@property (nonatomic, strong) UIImageView *tintedGear;

@end

@implementation PARViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // image view extensions test
    self.normalGear = [UIImageView imageViewWithImageNamed:@"noun_project_1241"];
    self.normalGear.frame = CGRectMake(20, 20, 100, 100);
    [self.view addSubview:self.normalGear];
    
    // image tint extensions test
    UIImage *tintedGearImage = [UIImage imageNamed:@"noun_project_1241"];
    tintedGearImage = [tintedGearImage tintedImageUsingColor:[UIColor redColor]];
    self.tintedGear = [[UIImageView alloc] initWithImage:tintedGearImage];
    self.tintedGear.frame = CGRectMake(20, 140, 100, 100);
    [self.view addSubview:self.tintedGear];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
