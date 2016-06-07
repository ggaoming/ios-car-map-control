//
//  RootViewController.m
//  二代摄影车
//
//  Created by gao on 16/6/2.
//  Copyright © 2016年 gao. All rights reserved.
//

#import "RootViewController.h"
#import "ACEDrawingView.h"
#import <QuartzCore/QuartzCore.h>
@interface RootViewController ()< ACEDrawingViewDelegate, UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *rulerBtn;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *drawStyleBtn;
@property (weak, nonatomic) IBOutlet UIToolbar *ToolsBar;
@end
@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.draw_view.delegate = self;
  
}
#pragma mark -updata Undo Redo Status
-(void)updateUndoRedoStates{
    self.undoBtn.enabled = [self.draw_view canUndo];
    self.redoBtn.enabled = [self.draw_view canRedo];
}
#pragma mark -ACEDrawing View Delegate
-(void)drawingView:(ACEDrawingView *)view didEndDrawUsingTool:(id<ACEDrawingTool>)tool
{

}
//保存按钮点击
- (IBAction)Save_Btn_Press:(id)sender {
}
//工具按钮点击
- (IBAction)Show_Tools_Btn_Press:(id)sender {
    NSLog(@"show tools bar");
    if(self.ToolsBar.hidden == YES)
        self.ToolsBar.hidden = NO;
    else
        self.ToolsBar.hidden = YES;
}
//设置按钮点击
- (IBAction)Setting_Btn_Press:(id)sender {
}
//测试按钮点击
- (IBAction)Testting_Btn_press:(id)sender {
}
//标尺按钮点击
- (IBAction)Ruler_Btn_Press:(id)sender {
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction * oneMeter = [UIAlertAction actionWithTitle:@"1m" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.rulerBtn.title = @"1m";
    }];
    UIAlertAction * halfMeter = [UIAlertAction actionWithTitle:@"0.5m" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.rulerBtn.title = @"0.5m";
    }];
    UIAlertAction * onehalfMeter = [UIAlertAction actionWithTitle:@"1.5m" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.rulerBtn.title = @"1.5m";
    }];
    UIAlertAction * cancle = [UIAlertAction actionWithTitle:@"cancle" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    }];
    [alert addAction:oneMeter];
    [alert addAction:halfMeter];
    [alert addAction:onehalfMeter];
    [alert addAction:cancle];
    [self presentViewController:alert animated:YES completion:nil];
}
//图案按钮
- (IBAction)Select_Draw_Sytel_Btn_Press:(id)sender {
    UIAlertController * alert = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction * circle=[UIAlertAction actionWithTitle:@"circle" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.drawStyleBtn.title = @"circle";
    }];
    UIAlertAction * rectangle = [UIAlertAction actionWithTitle:@"rectangle" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.drawStyleBtn.title = @"rectangle";
    }];
    UIAlertAction * triangle = [UIAlertAction actionWithTitle:@"triangle" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.drawStyleBtn.title = @"triangle";
    }];
    UIAlertAction * arrow = [UIAlertAction actionWithTitle:@"arrow" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        self.drawStyleBtn.title = @"arrow";
    }];
    UIAlertAction * cancle = [UIAlertAction actionWithTitle:@"cancle" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
    }];
    
    
    [alert addAction:circle];
    [alert addAction:rectangle];
    [alert addAction:triangle];
    [alert addAction:arrow];
    [alert addAction:cancle];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
