//
//  ZBLog.m
//  ZBKitDemo
//
//  Created by zhao on 8/24/15.
//  Copyright (c) 2015 Zhao. All rights reserved.
//

#import "ZBLog.h"

extern "C" NSString *NSStringFormatted( NSString * format, va_list argList )
{
    
    return [[NSString alloc] initWithFormat:format arguments:argList];
}

extern "C" void ZBLog(NSString *time, NSString *file, const char *function , int line, NSObject *format, ...)
{
    
    
    if ( nil == format )
        return;
    
    va_list args;
    va_start( args, format );
    
    NSString * text = nil;
    
    if ( [format isKindOfClass:[NSString class]] ){
        
        text = [NSString stringWithFormat:@"%@", NSStringFormatted((NSString *)format, args)];
        
    } else {
        
        text = [NSString stringWithFormat:@"%@", [format description]];
    }
    
    va_end( args );
    
    if ( [text rangeOfString:@"\n"].length ){
        
        text = [text stringByReplacingOccurrencesOfString:@"\n" withString:[NSString stringWithFormat:@"\n\t\t"]];
        
    }
    
    printf("[LOG] 👀  ⥤ %s ",[time UTF8String]);
    printf("%s ",[file UTF8String]);
    printf("%d ",line);
    printf("%s: ",function);
    printf("%s\n",[text UTF8String]);
    
}

extern "C" void ZBErrorLog(NSString *time,NSString *file, const char *function , int line, NSObject *format, ... )
{
    
    va_list args;
    va_start( args, format );
    
    NSString * text = nil;
    
    if ( [format isKindOfClass:[NSString class]] ){
        
        text = [NSString stringWithFormat:@"%@", NSStringFormatted((NSString *)format, args)];
        
    } else {
        
        text = [NSString stringWithFormat:@"%@", [format description]];
    }
    
    va_end( args );
    
    if ( [text rangeOfString:@"\n"].length ){
        
        text = [text stringByReplacingOccurrencesOfString:@"\n" withString:[NSString stringWithFormat:@"\n\t\t"]];
    }
    
    printf("[ERROR] ❌  ⥤ %s ",[time UTF8String]);
    printf("%s ",[file UTF8String]);
    printf("%d ",line);
    printf("%s: ",function);
    printf("%s\n",[text UTF8String]);
    
}

extern "C" void ZBWarn(NSString *time,NSString *file, const char *function , int line, NSObject *format, ... )
{
    
    va_list args;
    va_start( args, format );
    
    NSString * text = nil;
    
    if ( [format isKindOfClass:[NSString class]] ){
        
        text = [NSString stringWithFormat:@"%@", NSStringFormatted((NSString *)format, args)];
        
    } else {
        
        text = [NSString stringWithFormat:@"%@", [format description]];
    }
    
    va_end( args );
    
    if ( [text rangeOfString:@"\n"].length ){
        
        text = [text stringByReplacingOccurrencesOfString:@"\n" withString:[NSString stringWithFormat:@"\n\t\t"]];
    }
    
    printf("[WARN] ⚠️  ⥤ %s ",[time UTF8String]);
    printf("%s ",[file UTF8String]);
    printf("%d ",line);
    printf("%s: ",function);
    printf("%s\n",[text UTF8String]);
    
}

extern "C" void ZBWarning(NSObject *format, ... )
{
    
    va_list args;
    va_start( args, format );
    
    NSString * text = nil;
    
    if ( [format isKindOfClass:[NSString class]] ){
        
        text = [NSString stringWithFormat:@"%@", NSStringFormatted((NSString *)format, args)];
        
    } else {
        
        text = [NSString stringWithFormat:@"%@", [format description]];
    }
    
    va_end( args );
    
    if ( [text rangeOfString:@"\n"].length ){
        
        text = [text stringByReplacingOccurrencesOfString:@"\n" withString:[NSString stringWithFormat:@"\n\t\t"]];
    }
    
    printf("[WARNING] ⚠️  ⥤ %s\n",[text UTF8String]);
}




