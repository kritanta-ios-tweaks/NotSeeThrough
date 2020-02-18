#include <UIKit/UIKit.h>
%hook _SBWallpaperWindow

-(NSInteger)windowLevel {
    return -3;
}
%end
%hook SBIconContentView 

-(void)setHidden:(BOOL)hid {
    %orig(NO);
    }

%end
 
@interface SBFWallpaperView : UIView 
@end
%hook SBFWallpaperView
-(BOOL)isHidden {
    return [self.superview.superview.superview.description containsString:@"CoverSheetPanelBackground"] ? YES : %orig;
    }
%end