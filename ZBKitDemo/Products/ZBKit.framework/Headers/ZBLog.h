//
//  ZBLog.h
//  ZBKitDemo
//
//  Created by zhao on 8/24/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import <Foundation/Foundation.h>

#undef  LOG
#define LOG(desc,...) ZBLog([[NSString stringWithUTF8String:__TIME__] lastPathComponent],[[NSString stringWithUTF8String:__FILE__] lastPathComponent], __FUNCTION__, __LINE__, desc, ##__VA_ARGS__)

#undef  ELOG
#define ELOG(desc,...) ZBErrorLog([[NSString stringWithUTF8String:__TIME__] lastPathComponent],[[NSString stringWithUTF8String:__FILE__] lastPathComponent], __FUNCTION__, __LINE__, desc, ##__VA_ARGS__)

#undef  WARN
#define WARN(desc,...) ZBWarn([[NSString stringWithUTF8String:__TIME__] lastPathComponent],[[NSString stringWithUTF8String:__FILE__] lastPathComponent], __FUNCTION__, __LINE__, desc, ##__VA_ARGS__)

#if __cplusplus
extern "C" {
#endif
    
    void ZBLog(NSString *time, NSString *file, const char *function , int line, NSObject *format, ...);
    
    void ZBErrorLog(NSString *time, NSString *file, const char *function , int line, NSObject *format, ... );
    
    void ZBWarn(NSString *time, NSString *file, const char *function , int line, NSObject *format, ... );
    
    void ZBWarning(NSObject *format, ... );

#if __cplusplus
};
#endif
