//
//  AppDelegate.m
//  Johnson Music for Mac
//
//  Created by Isiah Johnson on 1/29/17.
//  Copyright (c) 2017 Johnson Network. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
   
    
        _window.titleVisibility = NSWindowTitleHidden;
        _window.backgroundColor = NSColor.clearColor;
        _window.releasedWhenClosed = NO;
        _window.movableByWindowBackground = YES;
        _window.opaque = NO;
        self.window.appearance = [NSAppearance appearanceNamed:NSAppearanceNameVibrantDark];
    

    
        NSURL *url = [NSURL URLWithString:@"http://johnsonmusic.xyz/"];
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
        [[[self webView] mainFrame] loadRequest:urlRequest];
        [self.window setContentView:self.webView];
    
        [_webView.layer setBackgroundColor:[NSColor clearColor].CGColor];
        [_webView.layer setOpaque:NO];
    

    
    
        [self.window setTitle:@"Johnson Music"];
        
        self.window.styleMask = self.window.styleMask | NSFullSizeContentViewWindowMask;
        
    
    
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (NSApplicationPresentationOptions)window:(NSWindow *)window willUseFullScreenPresentationOptions: (NSApplicationPresentationOptions)proposedOptions
{
    return (NSApplicationPresentationFullScreen |
            NSApplicationPresentationHideDock |
            NSApplicationPresentationHideMenuBar |
            NSApplicationPresentationAutoHideToolbar);
}

- (BOOL)applicationShouldHandleReopen:(NSApplication *)theApplication hasVisibleWindows:(BOOL)flag {
    
    [_window makeKeyAndOrderFront:self];
    
    return YES;
}


// Touch Bar Items
- (IBAction)touchbarSongsPressed:(id)sender {
    [self loadWebViewWithURL:@"http://johnsonmusic.xyz/songs"];
}

//Menu Bar Items
- (IBAction)menuPopAlbumPressed:(NSMenuItem *)sender {
      [self loadWebViewWithURL:@"http://johnsonmusic.xyz/top-albums"];
}
- (IBAction)menuPopGenrePressed:(NSMenuItem *)sender {
          [self loadWebViewWithURL:@"http://johnsonmusic.xyz/popular-genres"];
}
- (IBAction)menuTop50Pressed:(NSMenuItem *)sender {
          [self loadWebViewWithURL:@"http://johnsonmusic.xyz/top-songs"];
}
- (IBAction)menuNewReleasesPressed:(NSMenuItem *)sender {
          [self loadWebViewWithURL:@"http://johnsonmusic.xyz/new-releases"];
}

- (IBAction)menuSongsPressed:(NSMenuItem *)sender {
          [self loadWebViewWithURL:@"http://johnsonmusic.xyz/songs"];
}
- (IBAction)menuAlbumPressed:(NSMenuItem *)sender {
          [self loadWebViewWithURL:@"http://johnsonmusic.xyz/albums"];
}
- (IBAction)menuArtistPressed:(NSMenuItem *)sender {
          [self loadWebViewWithURL:@"http://johnsonmusic.xyz/artists"];
}




-(void)loadWebViewWithURL:(NSString*)urlstr{
    
    NSURLRequest *request=[NSURLRequest requestWithURL:[NSURL URLWithString:urlstr] cachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData timeoutInterval:30.0f];
    [[[self webView] mainFrame]  loadRequest:request];
    [self.window setContentView:self.webView];
}


@end
