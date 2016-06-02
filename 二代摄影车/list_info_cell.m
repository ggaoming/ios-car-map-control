//
//  list_info_cell.m
//  二代摄影车
//
//  Created by gao on 16/6/2.
//  Copyright © 2016年 gao. All rights reserved.
//

#import "list_info_cell.h"
@implementation list_info_cell
-(void)cell_btn_pressDelete:(Delete)delete_btn_action LOAD:(Load)load_btn_action
{
    load_action = load_btn_action;
    delete_action = delete_btn_action;
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    UISwipeGestureRecognizer * left = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(show_btns)];
    left.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.contentView addGestureRecognizer:left];
    
    UISwipeGestureRecognizer * right = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(hid_bnts)];
    [self.contentView addGestureRecognizer:right];
    // Initialization code
}
-(void)show_btns{
    self.load_info_btn.hidden = NO;
    self.delete_btn.hidden = NO;
    return;
}
-(void)hid_bnts{
    self.load_info_btn.hidden = YES;
    self.delete_btn.hidden = YES;
    return;
}
- (IBAction)Delete_btn_press:(id)sender {
    delete_action(self.delete_btn);
}
- (IBAction)Load_btn_press:(id)sender {
    load_action(self.load_info_btn);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    if(selected)
        [self show_btns];
    else
        [self hid_bnts];
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
