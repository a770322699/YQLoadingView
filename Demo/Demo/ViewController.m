//
//  ViewController.m
//  Demo
//
//  Created by maygolf on 16/11/16.
//  Copyright © 2016年 yiquan. All rights reserved.
//

#import "ViewController.h"
#import "YQLoadingView.h"

@interface ViewController ()

@property (nonatomic, strong) YQLoadingView *loadingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getter
- (YQLoadingView *)loadingView{
    if (!_loadingView) {
        _loadingView = [[YQLoadingView alloc] init];
        _loadingView.viewController = self;
    }
    return _loadingView;
}

- (IBAction)action:(id)sender {
    
    static NSInteger i = 0;
    
    if (i == 0) {
        //        [self.loadingView showLoading:@"正在加载...."];
        i = 1;
    }else if (i == 1){
        [self.loadingView showFail:@"失败"];
        i = 2;
    }else if (i == 2){
        [self.loadingView showSuccess:@"成功"];
        i = 0;
    }
}


@end
