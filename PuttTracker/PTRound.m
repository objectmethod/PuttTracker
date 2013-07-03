#import "PTRound.h"
#import "PTHole.h"

@interface PTRound ()

// Private interface goes here.

@end


@implementation PTRound

#pragma mark - initialize

- (id)init {
	self = [super init];
	
	if (self) {
		[self initialize];
	}
	
	return self;
}

- (id)initWithEntity:(NSEntityDescription *)entity insertIntoManagedObjectContext:(NSManagedObjectContext *)context {
	self = [super initWithEntity:entity insertIntoManagedObjectContext:context];
	
	if (self) {
		[self initialize];
	}
	
	return self;
}

- (void) initialize {
	if (self.holes != nil && self.holes.count == 0) {
		for (NSInteger i = 1; i <= 18; i++) {
			PTHole *hole = [PTHole insertInManagedObjectContext:self.managedObjectContext];
			hole.round = self;
			hole.numberValue = i;
			[self addHolesObject:hole];
		}
	}
}

@end
