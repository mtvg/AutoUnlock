#import "substrate.h"

@interface SBLockScreenView : UIView
- (void)scrollToPage:(long long)arg1 animated:(BOOL)arg2;
@end

int counter = 0;

%hook SBLockScreenView

-(void)setCustomSlideToUnlockText:(id)arg1 {
	%orig;

	if (counter < 2) {
		[UIView animateWithDuration:0.75 animations:^(void) {
			[self scrollToPage:0 animated:YES];
		}];
		counter++;
	}
}

%end
