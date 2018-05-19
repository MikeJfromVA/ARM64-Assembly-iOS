//
//  popcount.c
//  ARMAssembly
//
//  Created by Michael Johnson on 5/19/18.
//  Copyright © 2018 Michael Johnson. All rights reserved.
//

#include <stdio.h>

#ifndef __arm64__

int popcount(int x) {
    int i;
    int count = 0;
    for (i = 0; i < sizeof(int)*8; i++) {
        if ( (x&1) == 1 ) {
            count++;
        }
        x >>= 1;
    }
    return count;
}

#endif
