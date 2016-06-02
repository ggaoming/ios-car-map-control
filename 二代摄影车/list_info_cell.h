//
//  list_info_cell.h
//  二代摄影车
//
//  Created by gao on 16/6/2.
//  Copyright © 2016年 gao. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^Delete)(UIButton * btn);
typedef void (^Load)(UIButton * btn);
@interface list_info_cell : UITableViewCell
{
    Delete delete_action;
    Load load_action;
}
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *load_info_btn;
@property (weak, nonatomic) IBOutlet UIButton *delete_btn;


-(void)cell_btn_pressDelete:(Delete) delete_btn_action LOAD:(Load) load_btn_action;
@end
