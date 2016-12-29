//
//  NSString+SHA1.h
//  EncryptAndDecrypt
//
//  Created by Mac on 2016/12/29.
//  Copyright © 2016年 zhangjing90s@foxmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>
#import "GTMBase64.h"
@interface NSString (SHA1)
//只有加密没有解密
/**
 sha1的加密

 @return 返回的是加密后的字符串
 */
- (NSString*)SHA1_Encrypt;

/**
 结合BASE64的sha1加密

 @return 返回经过加密的字符串
 */
- (NSString*)SHA1_base64_Encrypt;
@end
