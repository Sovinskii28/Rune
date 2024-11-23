#import <Foundation/Foundation.h>

#if __has_attribute(swift_private)
#define AC_SWIFT_PRIVATE __attribute__((swift_private))
#else
#define AC_SWIFT_PRIVATE
#endif

/// The "1ru" asset catalog image resource.
static NSString * const ACImageName1Ru AC_SWIFT_PRIVATE = @"1ru";

/// The "2ru" asset catalog image resource.
static NSString * const ACImageName2Ru AC_SWIFT_PRIVATE = @"2ru";

/// The "3ru" asset catalog image resource.
static NSString * const ACImageName3Ru AC_SWIFT_PRIVATE = @"3ru";

/// The "4ru" asset catalog image resource.
static NSString * const ACImageName4Ru AC_SWIFT_PRIVATE = @"4ru";

/// The "5ru" asset catalog image resource.
static NSString * const ACImageName5Ru AC_SWIFT_PRIVATE = @"5ru";

/// The "6ru" asset catalog image resource.
static NSString * const ACImageName6Ru AC_SWIFT_PRIVATE = @"6ru";

/// The "backround1" asset catalog image resource.
static NSString * const ACImageNameBackround1 AC_SWIFT_PRIVATE = @"backround1";

/// The "head" asset catalog image resource.
static NSString * const ACImageNameHead AC_SWIFT_PRIVATE = @"head";

#undef AC_SWIFT_PRIVATE
