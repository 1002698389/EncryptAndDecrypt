//
//  EncryptionShare.h
//  EncryptAndDecrypt
//
//  Created by Mac on 2016/12/28.
//  Copyright © 2016年 zhangjing90s@foxmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface RSAEncryption : NSObject

/**
 RSA加密方法

 @param str 需要加密的字符串
 @param path 公钥的路径
 @return 加密后的字符串
 */
+ (NSString *)RSAEncryptString:(NSString *)str publicKeyWithContentsOfFile:(NSString *)path;

/**
 RSA解密方法

 @param str 需要解密的字符串
 @param path 私钥的路径
 @param password 私钥的密码 在声声私钥时要密码 我选择全部nil
 @return 解密后的字符串
 */
+ (NSString *)RSADecryptString:(NSString *)str privateKeyWithContentsOfFile:(NSString *)path password:(NSString *)password;

/**
 RSA加密方法

 @param str 需要加密的字符串
 @param pubKey 公钥字符串
 @return 加密后的字符串
 */
+ (NSString *)RSAEncryptString:(NSString *)str publicKey:(NSString *)pubKey;

/**
 RSA解密方法

 @param str 需要解密的字符串
 @param privKey 撕咬字符串
 @return 解密后的字符串
 */
+ (NSString *)RSADecryptString:(NSString *)str privateKey:(NSString *)privKey;

@end
