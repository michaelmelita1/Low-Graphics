#import <UIKit/UIKit.h>
%hook 
- (long long)_graphicsQuality {
return 1;
}
%end
