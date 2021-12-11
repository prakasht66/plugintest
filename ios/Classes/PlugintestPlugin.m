#import "PlugintestPlugin.h"
#if __has_include(<plugintest/plugintest-Swift.h>)
#import <plugintest/plugintest-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugintest-Swift.h"
#endif

@implementation PlugintestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPlugintestPlugin registerWithRegistrar:registrar];
}
@end
