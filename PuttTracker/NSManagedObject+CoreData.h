@interface NSManagedObject (CoreData)

+ (NSArray*) allObjects;
+ (id) newEntity;

- (void) delete;

@end
