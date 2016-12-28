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
- (NSString*)md532BitLower;
- (NSString*)md532BitUpper;
@end
