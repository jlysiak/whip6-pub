#
# whip6: Warsaw High-performance IPv6.
#
# Copyright (c) 2012-2017 Przemyslaw Horban
# All rights reserved.
#
# This file is distributed under the terms in the attached LICENSE     
# files.
#
app name: SoftResetApp

boards:
 - bboard
 - climboard
 - corebox
 - fedo
 - hyboard
 - cc2650dk

build dir: $(SPEC_DIR)/build/$(BOARD)
