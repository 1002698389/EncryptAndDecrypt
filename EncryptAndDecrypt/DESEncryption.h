//
//  DESEncryption.h
//  EncryptAndDecrypt
//
//  Created by Mac on 2016/12/29.
//  Copyright © 2016年 zhangjing90s@foxmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DESEncryption : NSObject

/**
 DES加密

 @param sText 需要加密的字符串
 @return 返回加密后的字符串
 */
+ (NSString *)DESEncryptWithText:(NSString *)sText;

/**
 DES解密

 @param sText 需要解密的字符串
 @return 返回解密的字符串
 */
+ (NSString *)DESDecryptWithText:(NSString *)sText;
@end
