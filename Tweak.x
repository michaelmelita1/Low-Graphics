#import <UIKit/UIKit.h>
%hook UIDevice
- (long long)_graphicsQuality {
return 10;
}
%end
