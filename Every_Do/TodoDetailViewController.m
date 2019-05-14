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
}

- (IBAction)changePriority:(UIStepper *)sender {
    self.todo.priority = [NSNumber numberWithDouble: self.priorityStepper.value ];
    self.priorityLabel.text = [NSString stringWithFormat: @"%i", (int) self.priorityStepper.value];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
