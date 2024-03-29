//
//  AppDelegate.m
//  SavePanelTest
//
//  Created by Haomin Zheng on 2019-09-10.
//  Copyright © 2019 Haomin Zheng. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (strong) NSSavePanel* uiPanel;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application
	
	self.uiPanel = [[NSSavePanel alloc] init];
	[self.uiPanel setNameFieldStringValue:@"Click the button!"];
	NSView* accView = [[NSView alloc] initWithFrame:NSMakeRect(0, 0, 300, 100)];
	NSButton* testButton = [NSButton buttonWithTitle:@"Call setNameFieldStringValue:" target:self action:@selector(testAction)];
	[accView addSubview:testButton];
	self.uiPanel.accessoryView = accView;
	
	if ( ([self.uiPanel runModal] == NSModalResponseOK ) )
	{
		;
	}
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
	// Insert code here to tear down your application
}

- (void)testAction
{
	[self.uiPanel setNameFieldStringValue:@"It works!"];
}


@end
