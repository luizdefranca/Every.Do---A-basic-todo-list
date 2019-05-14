//
//  AddViewController.h
//  Every_Do
//
//  Created by Luiz on 5/14/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

NS_ASSUME_NONNULL_BEGIN


@protocol ChangeTodoDelegate

-(void) addTodo: (Todo*) todo;

@end



@interface AddViewController : UIViewController
@property (nonatomic, weak) id<ChangeTodoDelegate> delegate;
@end

NS_ASSUME_NONNULL_END
