//
//  Todo.h
//  Every_Do
//
//  Created by Luiz on 5/14/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Todo : NSObject
@property (nonatomic, strong) NSString * task;
@property (nonatomic) BOOL completed;
@property (nonatomic) NSNumber * priority;
@property (nonatomic, strong) NSString * taskDescription;
@end

NS_ASSUME_NONNULL_END
