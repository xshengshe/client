//
//  AppDelegate.m
//  clienlauncher
//
//  Created by Markus Goetz on 31.10.18.
//  Copyright © 2018 ownCloud GmbH. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
	NSLog(@"launching ownCloud");
	NSString *path = [[NSBundle mainBundle] bundlePath];
	NSArray *p = [path pathComponents];
	NSMutableArray *pathComponents = [NSMutableArray arrayWithArray:p];
	[pathComponents removeLastObject];
	[pathComponents removeLastObject];
	[pathComponents removeLastObject];
	[pathComponents addObject:@"MacOS"];
	[pathComponents addObject:@"owncloud"]; // exe name
	NSString *mainAppPath = [NSString pathWithComponents:pathComponents];
	[[NSWorkspace sharedWorkspace] launchApplication:mainAppPath];
	NSLog(@"GURUZ launching ownCloud DONE");
	[NSApp terminate:self];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
	NSLog(@"GURUZ clientlauncher quit");
}


@end
