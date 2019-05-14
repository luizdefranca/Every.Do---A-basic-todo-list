//
//  AddViewController.m
//  Every_Do
//
//  Created by Luiz on 5/14/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "AddViewController.h"
#import "TodoViewController.h"


@interface AddViewController ()
@property (weak, nonatomic) IBOutlet UITextField *taskTextField;
@property (weak, nonatomic) IBOutlet UIStepper *priorityStepper;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (nonatomic, strong) Todo * todo;

@property (weak, nonatomic) IBOutlet UINavigationItem *titleNavigationBar;

@end

@implementation AddViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.todo = [Todo new];
}

- (void)viewWillAppear:(BOOL)animated {
    

}

- (IBAction)changePriority:(UIStepper *)sender {
    self.priorityLabel.text = [NSString stringWithFormat: @"%i", (int) self.priorityStepper.value];
    self.todo.priority = [NSNumber numberWithDouble: self.priorityStepper.value];
}

-(void)addTodo {


}


- (IBAction)saveTodo:(UIButton *)sender {
    self.todo.task = self.taskTextField.text;
    self.todo.taskDescription = self.descriptionTextView.text;
    self.todo.priority = [NSNumber numberWithDouble: self.priorityStepper.value];
    self.todo.completed = NO;

    [self.delegate addTodo: self.todo ];

    [self.navigationController popViewControllerAnimated: YES];
}

@end
