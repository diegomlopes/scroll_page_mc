#import "ScrollPageMcPlugin.h"
#if __has_include(<scroll_page_mc/scroll_page_mc-Swift.h>)
#import <scroll_page_mc/scroll_page_mc-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "scroll_page_mc-Swift.h"
#endif

@implementation ScrollPageMcPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftScrollPageMcPlugin registerWithRegistrar:registrar];
}
@end
