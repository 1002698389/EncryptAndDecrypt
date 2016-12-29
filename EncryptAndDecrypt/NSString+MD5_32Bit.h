//
//  NSString+MD5_32Bit.h
//  EncryptAndDecrypt
//
//  Created by Mac on 2016/12/28.
//  Copyright © 2016年 zhangjing90s@foxmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>

@interface NSString (MD5_32Bit)

/**
 MD5加密

 @return 返回的字符串字母全部小写
 */
- (NSString*)md532BitLower;

/**
 MD5加密大写

 @return 返回的字符串中字母全部大写
 */
- (NSString*)md532BitUpper;
@end
