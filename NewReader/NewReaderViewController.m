//
//  NewReaderViewController.m
//  NewReader
//
//  Created by Zeeshan Chawdhary on 08/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "NewReaderViewController.h"

@implementation NewReaderViewController

@synthesize pageControl;
@synthesize thumbnailControl;

- (void)dealloc {
  [pageControl release];
  [thumbnailControl release];
  
  [super dealloc];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [thumbnailControl setBackgroundColor:[UIColor scrollViewTexturedBackgroundColor]];
  
  if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
    [thumbnailControl setPageSeparation:5];
    [thumbnailControl setPortraitSize:CGSizeMake(60,80)];
    [thumbnailControl setLandscapeSize:CGSizeMake(80,60)];
    [pageControl setScale:0.4166667];
  }
  else {
    [thumbnailControl setPageSeparation:10];
    [thumbnailControl setPortraitSize:CGSizeMake(135,180)];
    [thumbnailControl setLandscapeSize:CGSizeMake(180,135)];
    [pageControl setScale:1.0];
  }
  
  [pageControl setNavigator:thumbnailControl];
  [pageControl setDataSource:[[[KGLocalFileDataSource alloc] initWithPath:@"Data"] autorelease]];
}

- (void)viewDidUnload {
  self.pageControl = nil;
  self.thumbnailControl = nil;
  [super viewDidUnload];
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  [pageControl.imageStore removeAllImages];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
  return YES;
}

- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
  [super willRotateToInterfaceOrientation:toInterfaceOrientation duration:duration];
  
  if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
    if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation))
      [pageControl setBounds:CGRectMake(0, 0, 426, 320)];
    else
      [pageControl setBounds:CGRectMake(0, 0, 320, 426)];
  }
}

@end
