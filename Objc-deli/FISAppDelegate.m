//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringWithDeliLine:(NSArray *)deliLine{
    
    if ([deliLine count] == 0){ //if deli is empty
        NSString *empty = @"The line is currently empty."; //output empty string
        
        return empty; //return string
    }
    
    else {
        
        NSMutableString *notEmpty = [[NSMutableString alloc]initWithString: @"The line is:"]; //create empty mutable string
        
        for (NSUInteger i = 0; i < [deliLine count]; i++){ //create FOR loop to output mutiple name and number
            
            NSInteger number = i + 1; //indicate index starts from 1
            NSString *name = deliLine[i]; //declare name string as each deliLine index
            [notEmpty appendFormat: @"\n%li. %@", number, name]; // append notempty with number and name
        }
        
        return notEmpty; //return new appended notEmpty string
    }
    
}
-()addName:(NSString *)name toDeliLine:(NSMutableArray *)deliLine{
    
    [deliLine addObject:name]; //add name object to deliLine
    
    return deliLine;
}
-(NSString *)serveNextCustomerInDeliLine:(NSMutableArray *)deliLine{
    
    NSString *firstName = deliLine[0]; //declare first name in deliLine as string firstName
    [deliLine removeObjectAtIndex:0]; //remove first index from deliLine
    
    return firstName; //return the string containing first name
}

@end
