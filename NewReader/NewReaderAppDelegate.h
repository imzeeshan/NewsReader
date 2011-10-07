//
//  NewReaderAppDelegate.h
//  NewReader
//
//  Created by Zeeshan Chawdhary on 08/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

@class NewReaderViewController;

@interface NewReaderAppDelegate : NSObject <UIApplicationDelegate> {
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet NewReaderViewController *viewController;

@end
