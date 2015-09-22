//
//  TesteIphone1AppDelegate.h
//  TesteIphone1
//
//  Created by Anderson Foscarini on 11/26/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TesteIphone1ViewController;

@interface TesteIphone1AppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TesteIphone1ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TesteIphone1ViewController *viewController;

@end

