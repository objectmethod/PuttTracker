#import "PTHole.h"


@interface PTHole ()

@end


@implementation PTHole

- (NSString *)name {
	return [NSString stringWithFormat:@"Hole %d", self.numberValue];
}

@end
