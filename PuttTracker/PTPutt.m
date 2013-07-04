#import "PTPutt.h"

@interface PTPutt ()

@end

@implementation PTPutt

+ (NSString *)descriptionForZone:(NSInteger)zone {
	switch (zone) {
		case 1:
			return @"Long left";
			break;
		case 2:
			return @"Long";
			break;
		case 3:
			return @"Long right";
			break;
		case 4:
			return @"Left";
			break;
		case 5:
			return @"Holed";
			break;
		case 6:
			return @"Right";
			break;
		case 7:
			return @"Short left";
			break;
		case 8:
			return @"Short";
			break;
		case 9:
			return @"Short right";
			break;
		default:
			return @"";
			break;
	}
}

@end
