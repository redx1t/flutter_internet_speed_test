#import "FlutterInternetSpeedTestPlugin.h"
#if __has_include(<flutter_internet_speed_test_pro/flutter_internet_speed_test_pro-Swift.h>)
#import <flutter_internet_speed_test_pro/flutter_internet_speed_test_pro-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_internet_speed_test_pro-Swift.h"
#endif

@implementation FlutterInternetSpeedTestPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftInternetSpeedTestPlugin registerWithRegistrar:registrar];
}
@end
