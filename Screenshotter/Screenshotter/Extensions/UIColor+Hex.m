//
//  Created by Taylor Hughes on 12/6/12.
//  Copyright (c) 2012 Cluster Labs, Inc. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//

#import "UIColor+Hex.h"


@implementation UIColor (Hex)


+ (UIColor *)colorWithRGBHex:(NSInteger)hex alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((CGFloat) ((hex & 0xFF0000) >> 16)) / 255.0
                           green:((CGFloat) ((hex & 0x00FF00) >> 8)) / 255.0
                            blue:((CGFloat) (hex & 0x0000FF)) / 255.0
                           alpha:alpha];
}


+ (UIColor *) colorWithRGBHex:(NSInteger)hex {
    return [UIColor colorWithRGBHex:hex
                              alpha:1.0];
}


@end
