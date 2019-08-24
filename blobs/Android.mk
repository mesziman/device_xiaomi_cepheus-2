
include $(CLEAR_VARS)
LOCAL_MODULE := WfdCommon
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/framework/WfdCommon.jar
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := WfdService
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/priv-app/WfdService/WfdService.apk
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := APPS
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := .apk
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := QPerformance
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/framework/QPerformance.jar
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := UxPerformance
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/framework/UxPerformance.jar
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.qti.location.sdk
LOCAL_MODULE_OWNER := xiaomi
LOCAL_SRC_FILES := proprietary/framework/com.qti.location.sdk.jar
LOCAL_CERTIFICATE := platform
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := .jar
include $(BUILD_PREBUILT)
