//
//  list_saved_info.m
//  二代摄影车
//
//  Created by gao on 16/6/2.
//  Copyright © 2016年 gao. All rights reserved.
//

#import "list_saved_info.h"
#import "list_info_cell.h"
@interface list_saved_info ()
{
    NSMutableArray * list_info_array;
}
@end

@implementation list_saved_info

- (void)viewDidLoad {
    [super viewDidLoad];
    list_info_array = [[NSMutableArray alloc]initWithObjects:@"0",@"1",@"2",@"3",@"4",@"5",nil];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)Back_Btn_press:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [list_info_array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    list_info_cell *cell = [tableView dequeueReusableCellWithIdentifier:@"list_info_cell" forIndexPath:indexPath];
    cell.titleLabel.text = [NSString stringWithFormat:@"graphic %ld",(long)indexPath.row];
    // Configure the cell...
    [cell cell_btn_pressDelete:^(UIButton *btn) {
        int index = (int)indexPath.row;
        NSLog(@"delete %@",list_info_array[index]);
        [list_info_array removeObjectAtIndex:index];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
        [self.tableView reloadData];
        
    } LOAD:^(UIButton *btn) {
        int index = (int)indexPath.row;
        NSLog(@"load %@",list_info_array[index]);
    }];
    //[cell cell_btn_pressDelete:^(UIView *view) {
   //     NSLog(@"delete %ld",(long)indexPath.row );
    //} LOAD:^(UIView *view) {
        
       // NSLog(@"load %ld",(long)indexPath.row );

    //}];
    return cell;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
