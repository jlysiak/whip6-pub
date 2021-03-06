/*
 * whip6: Warsaw High-performance IPv6.
 *
 * Copyright (c) 2012-2017 Szymon Acedanski
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached LICENSE     
 * files.
 */


#include "hal_timer_resources.h"

generic configuration RFCoreGPOSignalPub(uint8_t signal) {
    uses interface CC26xxPin as Pin;
}
implementation {
    components new RFCoreGPOSignalPrv(signal) as Prv;
    Prv.CC26xxPin -> Pin;

    components new RFCoreGPOPub() as GPO;
    Prv.RFCoreGPO -> GPO;

    components RFCorePrv;
    Prv.RFCorePowerUpHook -> RFCorePrv;
}
