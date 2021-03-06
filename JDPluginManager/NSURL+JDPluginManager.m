//
//  NSURL+JDPluginManager.m
//  JDPluginManager
//
//  Created by Markus Emrich on 05.02.13.
//
//

#import "NSURL+JDPluginManager.h"

NSString *const pluginsDirectoryPath = @"~/Library/Application Support/Developer/Shared/Xcode/Plug-ins/";
NSString *const xcodePluginSuffix = @".xcplugin";

@implementation NSURL (JDPluginManager)

+ (NSURL*)pluginURLForPluginNamed:(NSString*)pluginName;
{
    NSString *folderName = [NSString stringWithFormat: @"%@%@/", pluginName, xcodePluginSuffix];
    NSString *pluginPath = [[[self pluginsDirectoryURL] path] stringByAppendingPathComponent:folderName];
    return [NSURL fileURLWithPath:pluginPath];
}

+ (NSURL*)pluginsDirectoryURL;
{
    return [NSURL fileURLWithPath:[pluginsDirectoryPath stringByExpandingTildeInPath] isDirectory:YES];
}

@end
