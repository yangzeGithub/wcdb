/*
 * Tencent is pleased to support the open source community by making
 * WCDB available.
 *
 * Copyright (C) 2017 THL A29 Limited, a Tencent company.
 * All rights reserved.
 *
 * Licensed under the BSD 3-Clause License (the "License"); you may not use
 * this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 *       https://opensource.org/licenses/BSD-3-Clause
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "WTCRepairObject+WCTTableCoding.h"
#import "WTCRepairObject.h"
#import <WCDB/WCDB.h>

@implementation WTCRepairObject

WCDB_IMPLEMENTATION(WTCRepairObject)
WCDB_SYNTHESIZE(WTCRepairObject, variable1)
WCDB_SYNTHESIZE(WTCRepairObject, variable2)

+ (NSString*)Name
{
    return NSStringFromClass(self);
}

+ (NSComparator)Comparator
{
    return ^NSComparisonResult(WTCRepairObject* obj1, WTCRepairObject* obj2) {
        if (obj1.variable1 == obj2.variable1) {
            return NSOrderedSame;
        }
        return [obj1.variable2 compare:obj2.variable2];
    };
}

- (BOOL)isEqual:(WTCRepairObject*)object
{
    return self.variable1 == object.variable1 && [self.variable2 isEqualToString:object.variable2];
}

@end
