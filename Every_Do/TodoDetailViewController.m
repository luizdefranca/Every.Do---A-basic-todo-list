//
//  TodoDetailViewController.m
//  Every_Do
//
//  Created by Luiz on 5/14/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "TodoDetailViewController.h"
#import "Todo.h"


@interface TodoDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UIStepper *priorityStepper;
@property (weak, nonatomic) IBOutlet UITextView *taskDescriptionTextView;
@property (weak, nonatomic) IBOutlet UINavigationItem *titleNavigationBar;


@end

@implementation TodoDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

-(void)viewWillAppear:(BOOL)animated{

     [self configScreen];
    [super viewWillAppear:animated];
}

-(void) configScreen {
    self.priorityStepper.value =  [self.todo.priority doubleValue];
    self.priorityLabel.text = [self.todo.priority stringValue];

    self.taskDescriptionTextView.text = self.todo.taskDescription;
    self.titleNavigationBar.title = self.todo.task;
}

- (IBAction)changePriority:(UIStepper *)sender {
    self.todo.priority = [NSNumber numberWithDouble: self.priorityStepper.value ];
    self.priorityLabel.text = [NSString stringWithFormat: @"%i", (int) self.priorityStepper.value];
}



@end
