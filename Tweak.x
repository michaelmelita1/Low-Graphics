#import <UIKit/UIKit.h>
%hook UIDevice
- (long long)_graphicsQuality {
return 10;
}
%hook SBControlCenterSettings
-(BOOL)useNewBounce {
return FALSE;
}
-(BOOL)forceVibrantControls {
return TRUE;
}
%end
