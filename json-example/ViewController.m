//
//  ViewController.m
//  json-example
//
//  Created by denghb on 16/1/6.
//  Copyright © 2016年 denghb. All rights reserved.
//

#import "ViewController.h"
#import "JSONModel.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UILabel *tipLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 120, 20)];
    [tipLabel setText:@"See Console ..."];
    [self.view addSubview:tipLabel];
    
    // example JSON string
    NSString *json = @"{\"name\":\"张三\",\"addtime\":\"2014-01-01\",\"username\":\"abc\",\"id\":5,\"items\":{\"asd\":\"sdas\"},\"sss\":[\"asdas\",\"asdas\"]}";
    
    JSONModelError *err = nil;
    
    Model *model = [[Model alloc]initWithString:json error:&err];
  
    NSLog(@"----- %@", model.addtime);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
