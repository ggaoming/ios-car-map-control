//
//  RootViewController.h
//  二代摄影车
//
//  Created by gao on 16/6/2.
//  Copyright © 2016年 gao. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ACEDrawingView;
@interface RootViewController : UIViewController
@property (nonatomic, unsafe_unretained) IBOutlet ACEDrawingView *draw_view;//绘图view
@property (weak, nonatomic) IBOutlet UIBarButtonItem *undoBtn;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *redoBtn;

@end
