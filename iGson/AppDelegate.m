//
//  AppDelegate.m
//  iGson
//
//  Created by su xinde on 13-11-22.
//  Copyright (c) 2013年 su xinde. All rights reserved.
//

#import "AppDelegate.h"
#import "iGson.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    [self test];
    
    
    return YES;
}

- (void)test
{
    iGson *gson = [[iGson alloc] init];
    NSMutableArray<iGson> *array = [NSMutableArray array];
    [array addObject:gson];
    
    NSString *name = [array lastObject].name; // 用范型之后，这里就不用在做类型转换了, Terrific!!!
    NSLog(@"%@", name);
    NSLog(@"%@", NSStringFromClass([[array lastObject] class]));
}

@end
