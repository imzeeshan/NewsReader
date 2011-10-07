//
//  NewReaderViewController.h
//  NewReader
//
//  Created by Zeeshan Chawdhary on 08/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Pugpig/Pugpig.h>

@interface NewReaderViewController : UIViewController {
}

@property (nonatomic, retain) IBOutlet KGPagedDocControl *pageControl;
@property (nonatomic, retain) IBOutlet KGPagedDocThumbnailControl *thumbnailControl;

@end
