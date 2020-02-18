#line 1 "Tweak.xm"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class _SBWallpaperWindow; @class SBFWallpaperView; @class SBIconContentView; 
static long (*_logos_orig$_ungrouped$_SBWallpaperWindow$windowLevel)(_LOGOS_SELF_TYPE_NORMAL _SBWallpaperWindow* _LOGOS_SELF_CONST, SEL); static long _logos_method$_ungrouped$_SBWallpaperWindow$windowLevel(_LOGOS_SELF_TYPE_NORMAL _SBWallpaperWindow* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$_ungrouped$SBIconContentView$setHidden$)(_LOGOS_SELF_TYPE_NORMAL SBIconContentView* _LOGOS_SELF_CONST, SEL, BOOL); static void _logos_method$_ungrouped$SBIconContentView$setHidden$(_LOGOS_SELF_TYPE_NORMAL SBIconContentView* _LOGOS_SELF_CONST, SEL, BOOL); static BOOL (*_logos_orig$_ungrouped$SBFWallpaperView$isHidden)(_LOGOS_SELF_TYPE_NORMAL SBFWallpaperView* _LOGOS_SELF_CONST, SEL); static BOOL _logos_method$_ungrouped$SBFWallpaperView$isHidden(_LOGOS_SELF_TYPE_NORMAL SBFWallpaperView* _LOGOS_SELF_CONST, SEL); 

#line 1 "Tweak.xm"
#include <UIKit/UIKit.h>


static long _logos_method$_ungrouped$_SBWallpaperWindow$windowLevel(_LOGOS_SELF_TYPE_NORMAL _SBWallpaperWindow* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return -3;
}

 

static void _logos_method$_ungrouped$SBIconContentView$setHidden$(_LOGOS_SELF_TYPE_NORMAL SBIconContentView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, BOOL hid) {
    _logos_orig$_ungrouped$SBIconContentView$setHidden$(self, _cmd, NO);
    }


 
@interface SBFWallpaperView : UIView 
@end

static BOOL _logos_method$_ungrouped$SBFWallpaperView$isHidden(_LOGOS_SELF_TYPE_NORMAL SBFWallpaperView* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
    return [self.superview.superview.superview.description containsString:@"CoverSheetPanelBackground"] ? YES : _logos_orig$_ungrouped$SBFWallpaperView$isHidden(self, _cmd);
    }

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$_SBWallpaperWindow = objc_getClass("_SBWallpaperWindow"); MSHookMessageEx(_logos_class$_ungrouped$_SBWallpaperWindow, @selector(windowLevel), (IMP)&_logos_method$_ungrouped$_SBWallpaperWindow$windowLevel, (IMP*)&_logos_orig$_ungrouped$_SBWallpaperWindow$windowLevel);Class _logos_class$_ungrouped$SBIconContentView = objc_getClass("SBIconContentView"); MSHookMessageEx(_logos_class$_ungrouped$SBIconContentView, @selector(setHidden:), (IMP)&_logos_method$_ungrouped$SBIconContentView$setHidden$, (IMP*)&_logos_orig$_ungrouped$SBIconContentView$setHidden$);Class _logos_class$_ungrouped$SBFWallpaperView = objc_getClass("SBFWallpaperView"); MSHookMessageEx(_logos_class$_ungrouped$SBFWallpaperView, @selector(isHidden), (IMP)&_logos_method$_ungrouped$SBFWallpaperView$isHidden, (IMP*)&_logos_orig$_ungrouped$SBFWallpaperView$isHidden);} }
#line 23 "Tweak.xm"
