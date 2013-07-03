// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to PTPutt.m instead.

#import "_PTPutt.h"

const struct PTPuttAttributes PTPuttAttributes = {
	.id = @"id",
};

const struct PTPuttRelationships PTPuttRelationships = {
	.hole = @"hole",
};

const struct PTPuttFetchedProperties PTPuttFetchedProperties = {
};

@implementation PTPuttID
@end

@implementation _PTPutt

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"PTPutt" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"PTPutt";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"PTPutt" inManagedObjectContext:moc_];
}

- (PTPuttID*)objectID {
	return (PTPuttID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic id;






@dynamic hole;

	






@end
