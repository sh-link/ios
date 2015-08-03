//
//  FileUtil.h
//  YZLibraryExample
//
//  Created by zhen yang on 15/7/30.
//  Copyright (c) 2015年 合家通科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileUtil : NSObject
/**用户保存临时文件，保存应用程序再次启动过程中需要的信息*/
+(NSString*)getTmpPath;
/**所有的应用程序数据文件应该写入到这个目录下，这个目录用于存储用户数据或其它应该定期备份的信息*/
+(NSString*)getDocumentPath;
@end
