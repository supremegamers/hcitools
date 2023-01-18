LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := hcitool
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := hcitool.c \
	           lib/bluetooth.c \
		   lib/hci.c \
		   src/oui.c
LOCAL_CFLAGS += -Wno-unused-parameter -Wno-pointer-arith \
                -Wno-missing-field-initializers \
                -fno-delete-null-pointer-checks \
                -fwrapv \
                -D_FORTIFY_SOURCE=2 \
                -fstack-protector-strong \
                -Wno-conversion-null \
                -Wnull-dereference \
                -Werror \
                -Warray-bounds

LOCAL_POST_INSTALL_CMD := ln -sf /vendor/bin/hcitool $(TARGET_OUT)/bin/hcitool
LOCAL_C_INCLUDES := $(KERNEL_HEADERS) $(LOCAL_PATH)/lib $(LOCAL_PATH)/src
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := hciconfig
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := hciconfig.c csr.c
LOCAL_SRC_FILES += lib/bluetooth.c lib/hci.c
LOCAL_CFLAGS += -Wno-unused-parameter -Wno-pointer-arith \
                -Wno-missing-field-initializers \
                -fno-delete-null-pointer-checks \
                -fwrapv \
                -D_FORTIFY_SOURCE=2 \
                -fstack-protector-strong \
                -Wno-conversion-null \
                -Wnull-dereference \
                -Werror \
                -Warray-bounds

LOCAL_POST_INSTALL_CMD := ln -sf /vendor/bin/hciconfig $(TARGET_OUT)/bin/hciconfig
LOCAL_C_INCLUDES := $(KERNEL_HEADERS) $(LOCAL_PATH)/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := btmon
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := monitor/main.c \
        monitor/display.c monitor/hcidump.c \
        monitor/control.c monitor/packet.c \
        monitor/l2cap.c monitor/avctp.c \
        monitor/avdtp.c monitor/a2dp.c \
        monitor/rfcomm.c monitor/bnep.c \
        monitor/jlink.c lib/uuid.c \
        monitor/sdp.c monitor/vendor.c \
        monitor/lmp.c monitor/crc.c \
        monitor/ll.c monitor/hwdb.c \
        monitor/keys.c monitor/ellisys.c \
        monitor/analyze.c monitor/intel.c \
        monitor/broadcom.c src/shared/util.c \
        src/shared/queue.c src/shared/crypto.c \
        src/shared/btsnoop.c  src/shared/mainloop.c \
        src/shared/mainloop-notify.c \
        src/shared/io-mainloop.c \
        src/shared/timeout-mainloop.c

LOCAL_SRC_FILES += lib/bluetooth.c lib/hci.c lib/sdp.c
LOCAL_CFLAGS += -DVERSION=\"5.54\" \
                -Wno-unused-parameter -Wno-pointer-arith \
                -Wno-missing-field-initializers \
                -fno-delete-null-pointer-checks \
                -fwrapv \
                -Wno-macro-redefined \
                -D_FORTIFY_SOURCE=2 \
                -fstack-protector-strong \
                -Wno-conversion-null \
                -Wnull-dereference \
                -Werror \
                -Warray-bounds

LOCAL_POST_INSTALL_CMD := ln -sf /vendor/bin/btmon $(TARGET_OUT)/bin/btmon
LOCAL_C_INCLUDES := $(KERNEL_HEADERS) $(LOCAL_PATH)/lib $(LOCAL_PATH)/src/shared
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := hciattach
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := \
                 hciattach.c \
                 hciattach_st.c \
                 hciattach_ti.c \
                 hciattach_tialt.c \
                 hciattach_ath3k.c \
                 hciattach_qualcomm.c \
                 hciattach_intel.c \
                 hciattach_bcm43xx.c \
                 lib/bluetooth.c \
                 lib/hci.c
LOCAL_CFLAGS += \
                -Wno-unused-parameter -Wno-pointer-arith \
                -Wno-missing-field-initializers \
                -fno-delete-null-pointer-checks \
                -fwrapv \
                -Wno-for-loop-analysis -Wno-format \
                -DFIRMWARE_DIR=\"/system/lib/firmware\" \
                -D_FORTIFY_SOURCE=2 \
                -fstack-protector-strong \
                -Wno-conversion-null \
                -Wnull-dereference \
                -Werror \
                -Warray-bounds

LOCAL_POST_INSTALL_CMD := ln -sf /vendor/bin/hciattach $(TARGET_OUT)/bin/hciattach
LOCAL_C_INCLUDES := $(KERNEL_HEADERS) $(LOCAL_PATH)/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := rtk_hciattach
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := \
                 hciattach.c \
                 hciattach_rtk.c \
                 hciattach_st.c \
                 hciattach_ti.c \
                 hciattach_tialt.c \
                 hciattach_ath3k.c \
                 hciattach_qualcomm.c \
                 hciattach_intel.c \
                 hciattach_bcm43xx.c \
                 lib/bluetooth.c \
                 lib/hci.c
LOCAL_CFLAGS += \
                -Wno-unused-parameter -Wno-pointer-arith \
                -Wno-missing-field-initializers \
                -fno-delete-null-pointer-checks \
                -fwrapv \
                -Wno-for-loop-analysis -Wno-format \
                -DFIRMWARE_DIR=\"/system/lib/firmware\" \
                -D_FORTIFY_SOURCE=2 \
                -fstack-protector-strong \
                -Wno-conversion-null \
                -Wnull-dereference \
                -Werror \
                -Warray-bounds

LOCAL_POST_INSTALL_CMD := ln -sf /vendor/bin/rtk_hciattach $(TARGET_OUT)/bin/rtk_hciattach
LOCAL_C_INCLUDES := $(KERNEL_HEADERS) $(LOCAL_PATH)/lib
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := btattach
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES := \
 	        btattach.c \
	        src/shared/mainloop.c \
	        src/shared/mainloop-notify.c \
	        src/shared/io-mainloop.c \
	        src/shared/hci.c \
	        src/shared/queue.c \
	        src/shared/util.c \
        	src/shared/timeout-mainloop.c
LOCAL_CFLAGS += -DVERSION=\"5.54\" \
                -Wno-unused-parameter -Wno-pointer-arith \
                -Wno-missing-field-initializers \
                -fno-delete-null-pointer-checks \
                -fwrapv \
                -Wno-macro-redefined \
                -D_FORTIFY_SOURCE=2 \
                -fstack-protector-strong \
                -Wno-conversion-null \
                -Wnull-dereference \
                -Werror \
                -Warray-bounds

LOCAL_POST_INSTALL_CMD := ln -sf /vendor/bin/btattach $(TARGET_OUT)/bin/btattach
LOCAL_C_INCLUDES := $(KERNEL_HEADERS) $(LOCAL_PATH)/lib $(LOCAL_PATH)/src/shared
LOCAL_SHARED_LIBRARIES := libcutils
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)

