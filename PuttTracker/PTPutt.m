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

+ (NSInteger)nextAvailableNumberForHole:(PTHole *)hole {
	NSPredicate *predicate = [NSPredicate predicateWithFormat:@"hole == %@", hole];
	NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:@"number" ascending:YES];
	NSArray *putts = [PTPutt allObjectsWithPredicate:predicate sortDescriptor:sortDescriptor];
	
	if (putts.count > 0) {
		PTPutt *lastPutt = [putts lastObject];
		return lastPutt.numberValue + 1;
	}
	
	return 1;
}

- (NSString *)description {
	return [PTPutt descriptionForZone:self.resultValue];
}

- (NSString *)numberAsString {
	switch (self.numberValue) {
		case 1:
			return @"First putt";
			break;
		case 2:
			return @"Second putt";
			break;
		case 3:
			return @"Third putt";
			break;
		case 4:
			return @"Fourth putt";
			break;
		case 5:
			return @"Fifth putt";
			break;
		case 6:
			return @"Sixth putt";
			break;
		case 7:
			return @"Seventh putt";
			break;
		case 8:
			return @"Eight putt";
			break;
		case 9:
			return @"Ninth putt";
			break;
		case 10:
			return @"Tenth putt";
			break;
		default:
			return @"No way! Seriously?";
			break;
	}
}

@end
