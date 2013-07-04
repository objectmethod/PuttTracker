#import "_PTPutt.h"
#import "NSManagedObject+CoreData.h"

@interface PTPutt : _PTPutt {}

+ (NSInteger) nextAvailableNumberForHole:(PTHole*)hole;

+ (NSString*) descriptionForZone:(NSInteger)zone;

@end
