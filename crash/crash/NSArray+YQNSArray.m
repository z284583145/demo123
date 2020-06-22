//
//  NSArray+YQNSArray.m
//  crash
//
//  Created by YQ on 2020/6/18.
//  Copyright © 2020 star happy. All rights reserved.
//

#import "NSArray+YQNSArray.h"
#import <objc/message.h>

@implementation NSArray (YQNSArray)

+ (void)load{
    Method method1 = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(objectAtIndex:));
    Method method2 = class_getInstanceMethod(objc_getClass("__NSArrayI"), @selector(YQ_objectAtIndex:));
    method_exchangeImplementations(method1, method2);
}

- (id)YQ_objectAtIndex:(NSUInteger)index{
    if (index > self.count - 1) {
        NSLog(@"数组越界...");
        return nil;
    }
    return [self YQ_objectAtIndex:index];
}

@end
