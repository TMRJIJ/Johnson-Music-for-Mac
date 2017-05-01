//
//  AppDelegate.h
//  Johnson Music for Mac
//
//  Created by Isiah Johnson on 1/29/15.
//  Copyright (c) 2015 Johnson Network. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (assign) IBOutlet WebView *webView;


- (IBAction)menuPopAlbumPressed:(id)sender;

@end

