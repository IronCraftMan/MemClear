//
//  main.m
//  MemClear
//
//  Created by Cole on 10/18/14.
//  Copyright (c) 2014 iCole. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, const char * argv[]) {
	[[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];
	return NSApplicationMain(argc, argv);
}
