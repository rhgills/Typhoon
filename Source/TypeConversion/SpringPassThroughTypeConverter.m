////////////////////////////////////////////////////////////////////////////////
//
//  JASPER BLUES
//  Copyright 2012 Jasper Blues
//  All Rights Reserved.
//
//  NOTICE: Jasper Blues permits you to use, modify, and distribute this file
//  in accordance with the terms of the license agreement accompanying it.
//
////////////////////////////////////////////////////////////////////////////////


#import "SpringPassThroughTypeConverter.h"
#import "SpringTypeDescriptor.h"


@implementation SpringPassThroughTypeConverter

/* ============================================================ Initializers ============================================================ */
- (id)initWithIsMutable:(BOOL)isMutable
{
    self = [super init];
    if (self)
    {
        _isMutable = isMutable;
    }
    return self;
}

/* =========================================================== Protocol Methods ========================================================= */
- (id)convert:(NSString*)stringValue
{
    if (_isMutable)
    {
        return [NSMutableString stringWithString:stringValue];
    }
    else
    {
        return [stringValue copy];
    }
}


@end