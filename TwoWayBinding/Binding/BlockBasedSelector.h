//
//  BlockBasedSelector.h
//  TestMVVM
//
//  Created by Rohit Negi on 07/12/19.
//  Copyright © 2019 Rohit Negi. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlockBasedSelector : NSObject
@end
typedef void (^OBJCBlock)(id foo);
void class_addMethodWithBlock(Class class, SEL newSelector, OBJCBlock block);
NS_ASSUME_NONNULL_END
