#import <Foundation/Foundation.h>

// QTok skeleton
// target: com.zhiliaoapp.musically, TikTok v45.x (exact build to be confirmed from the ipa's Info.plist)
// step 1 only: confirms the dylib loads into TikTok. no hooks yet.
// region spoof, stickers, photo-in-comments, profile banners come after this works.

%ctor {
    NSString *bid = [[NSBundle mainBundle] bundleIdentifier];
    NSString *ver = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    NSLog(@"[QTok] loaded into %@ v%@", bid, ver);
}
