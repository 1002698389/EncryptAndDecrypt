//
//  ViewController.m
//  EncryptAndDecrypt
//
//  Created by Mac on 2016/12/28.
//  Copyright © 2016年 zhangjing90s@foxmail.com. All rights reserved.
//

#import "ViewController.h"
#import "RSAEncryption.h"
#import "NSString+MD5_32Bit.h"
#import "GTMBase64.h"
#import "DESEncryption.h"
#import "NSData+AES.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //原始数据
    NSString *originalString = @"这是一段将要使用'.der'文件加密的字符串!";
    
    //使用.der和.p12中的公钥私钥加密解密
    NSString *public_key_path = [[NSBundle mainBundle] pathForResource:@"public_key.der" ofType:nil];
    NSString *private_key_path = [[NSBundle mainBundle] pathForResource:@"private_key.p12" ofType:nil];
    NSString *encryptStr = [RSAEncryption RSAEncryptString:originalString publicKeyWithContentsOfFile:public_key_path];
    NSLog(@"加密前:%@", originalString);
    NSLog(@"加密后:%@", encryptStr);
    NSLog(@"解密后:%@", [RSAEncryption RSADecryptString:encryptStr privateKeyWithContentsOfFile:private_key_path password:@""]);//我的密码设置为空
    //原始数据
    NSString *originalString1 = @"这是一段将要使用'秘钥字符串'进行加密的字符串!";
//    下面接着测试使用秘钥字符串进行加密、解密, 那么秘钥字符串从哪里来? 可以来这里:http://web.chacuo.net/netrsakeypair
    //使用字符串格式的公钥私钥加密解密
    NSString *encryptStr1 = [RSAEncryption RSAEncryptString:originalString1 publicKey:@"MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDTbZ6cNH9PgdF60aQKveLz3FTalyzHQwbp601y77SzmGHX3F5NoVUZbdK7UMdoCLK4FBziTewYD9DWvAErXZo9BFuI96bAop8wfl1VkZyyHTcznxNJFGSQd/B70/ExMgMBpEwkAAdyUqIjIdVGh1FQK/4acwS39YXwbS+IlHsPSQIDAQAB"];
    
    NSLog(@"加密前:%@", originalString1);
    NSLog(@"加密后:%@", encryptStr1);
    NSLog(@"解密后:%@", [RSAEncryption RSADecryptString:encryptStr1 privateKey:@"MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBANNtnpw0f0+B0XrRpAq94vPcVNqXLMdDBunrTXLvtLOYYdfcXk2hVRlt0rtQx2gIsrgUHOJN7BgP0Na8AStdmj0EW4j3psCinzB+XVWRnLIdNzOfE0kUZJB38HvT8TEyAwGkTCQAB3JSoiMh1UaHUVAr/hpzBLf1hfBtL4iUew9JAgMBAAECgYA1tGeQmAkqofga8XtwuxEWDoaDS9k0+EKeUoXGxzqoT/GyiihuIafjILFhoUA1ndf/yCQaG973sbTDhtfpMwqFNQq13+JAownslTjWgr7Hwf7qplYW92R7CU0v7wFfjqm1t/2FKU9JkHfaHfb7qqESMIbO/VMjER9o4tEx58uXDQJBAO0O4lnWDVjr1gN02cqvxPOtTY6DgFbQDeaAZF8obb6XqvCqGW/AVms3Bh8nVlUwdQ2K/xte8tHxjW9FtBQTLd8CQQDkUncO35gAqUF9Bhsdzrs7nO1J3VjLrM0ITrepqjqtVEvdXZc+1/UrkWVaIigWAXjQCVfmQzScdbznhYXPz5fXAkEAgB3KMRkhL4yNpmKRjhw+ih+ASeRCCSj6Sjfbhx4XaakYZmbXxnChg+JB+bZNz06YBFC5nLZM7y/n61o1f5/56wJBALw+ZVzE6ly5L34114uG04W9x0HcFgau7MiJphFjgUdAtd/H9xfgE4odMRPUD3q9Me9LlMYK6MiKpfm4c2+3dzcCQQC8y37NPgpNEkd9smMwPpSEjPW41aMlfcKvP4Da3z7G5bGlmuICrva9YDAiaAyDGGCK8LxC8K6HpKrFgYrXkRtt"]);

   NSLog(@"MD5加密小写：%@",[originalString md532BitLower]) ;
   NSLog(@"MD5加密大写：%@",[originalString md532BitUpper]) ;
    
    NSLog(@"%@",[DESEncryption DESEncryptWithText:@"这是一个des的加密算法"]);
    NSLog(@"%@",[DESEncryption DESDecryptWithText:[DESEncryption DESEncryptWithText:@"这是一个des的加密算法"]]);
    [self GTMBase64Encryption];
    
//    NSData *data = [@"woshiyigeceshi" dataUsingEncoding:NSUTF8StringEncoding];
//    NSData *data1 = [data AES256EncryptWithKey:@"key"];
//    NSLog(@"----------------%@",data1 );
//    NSData *data2 = [[data AES256EncryptWithKey:@"key"] AES256EncryptWithKey:@"key"] ;
//    NSLog(@"----------------%@",data2);
//    NSStringEncoding enc = CFStringConvertEncodingToNSStringEncoding (kCFStringEncodingGB_18030_2000);
//    NSString *str = [[NSString alloc]initWithData:data2 encoding:enc];
//    NSString *str2 = [[NSString alloc]initWithData:data2 encoding:NSUTF8StringEncoding];
//        NSLog(@"%@--%@",str,str2);
}
- (void)GTMBase64Encryption
{
    //进行md5编码
    NSString *strmd5 = [GTMBase64 md5_base64:@"test"];
    NSLog(@"strmd5:%@",strmd5);
    //进行Base64编码
    NSString *strenBase64 = [GTMBase64 encodeBase64String:@"test"];
    NSLog(@"strenBase64:%@",strenBase64);
    //进行Base64解码
    NSString *strdeBase64 = [GTMBase64 decodeBase64String:@"dGVzdA=="];
    NSLog(@"strdeBase64:%@",strdeBase64);
    
    //创建字符串，并将字符串转换成NSData
    NSString *aString = @"test";
    NSData *aData = [aString dataUsingEncoding: NSUTF8StringEncoding];
    //进行Base64编码
    NSString *strenDataBase64 = [GTMBase64 encodeBase64Data:aData];
    NSLog(@"strenDataBase64:%@",strenDataBase64);
    
    //先将字符串转换成NSData类型
    NSString *bString = @"dGVzdA==";
    NSData *bData = [bString dataUsingEncoding: NSUTF8StringEncoding];
    //进行Base64解码
    NSData *deDataBase64 = [GTMBase64 decodeData:bData];
    NSString *strdeDataBase64 = [[NSString alloc] initWithData:deDataBase64 encoding:NSUTF8StringEncoding];
    NSLog(@"strenDataBase64:%@",strdeDataBase64);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
