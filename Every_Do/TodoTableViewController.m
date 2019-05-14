//
//  TodoTableViewController.m
//  Every_Do
//
//  Created by Luiz on 5/14/19.
//  Copyright © 2019 Luiz. All rights reserved.
//

#import "TodoTableViewController.h"
#import "Todo.h"
#import "TodoTableViewCell.h"
#import "TodoDetailViewController.h"
@interface TodoTableViewController ()<UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray<Todo*>* todoArray;

@property (nonatomic) TodoTableViewCell *todoCell;
@property (nonatomic, strong) Todo * selectedTodo;

@end

@implementation TodoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

    [self configTodoArray];
}


-(void) configTodoArray {
    self.todoArray = [NSMutableArray array];

    Todo *drinkWater = [Todo new];
    drinkWater.task = @"Drink water";
    drinkWater.completed = NO;
    drinkWater.priority = @1;
    drinkWater.taskDescription = @"Drink a cup of water each hour";
    [self.todoArray addObject: drinkWater];

    Todo *checkEmail = [Todo new];
    checkEmail.task = @"Check email";
    checkEmail.completed = YES;
    checkEmail.priority = @1;
    checkEmail.taskDescription = @"Check the email on the morning";
    [self.todoArray addObject: checkEmail];

    Todo *doShopping = [Todo new];
    doShopping.task = @"Do shopping";
    checkEmail.completed = NO;
    doShopping.priority = @3;
    doShopping.taskDescription = @"Do shopping on Saturday morning";
    [self.todoArray addObject: doShopping];
    

}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.todoArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     self.todoCell  = [tableView dequeueReusableCellWithIdentifier:@"todoCell" forIndexPath:indexPath];

    NSInteger row = indexPath.row;

    Todo *todo = self.todoArray[row];
    [self.todoCell.doneSwitch setOn: todo.completed];
    self.todoCell.taskLabel.text = todo.task;

    return self.todoCell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/



#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString: @"detailSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        self.selectedTodo = self.todoArray[indexPath.row];
        TodoDetailViewController *detailViewController = [segue destinationViewController];
        detailViewController.todo = self.selectedTodo;
    }

}


#pragma mark - UITableViewDelegate Methods


@end
