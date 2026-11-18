.class public Lmtopsdk/common/util/SwitchConfigUtil;
.super Ljava/lang/Object;
.source "SwitchConfigUtil.java"


# static fields
.field public static final ANTI_ATTACK_WAIT_INTERVAL_KEY:Ljava/lang/String; = "antiAttackWaitInterval"

.field public static final API_LOCK_INTERVAL_KEY:Ljava/lang/String; = "apiLockInterval"

.field public static final BIZ_ERROR_MAPPING_CODE_LENGTH_KEY:Ljava/lang/String; = "bizErrorMappingCodeLength"

.field public static final CONFIG_GROUP_MTOPSDK_ANDROID_SWITCH:Ljava/lang/String; = "mtopsdk_android_switch"

.field public static final CONFIG_GROUP_MTOPSDK_APICACHE_BLOCKINFO_SWITCH:Ljava/lang/String; = "mtopsdk_apicache_blockinfo"

.field public static final CONFIG_GROUP_MTOPSDK_UPLOAD_SWITCH:Ljava/lang/String; = "mtopsdk_upload_switch"

.field public static final DEGRADE_API_CACHE_LIST_KEY:Ljava/lang/String; = "degradeApiCacheList"

.field public static final DEGRADE_BIZCODE_SET_KEY:Ljava/lang/String; = "degradeBizcodeSet"

.field public static final DEGRADE_BIZ_ERROR_MAPPING_API_LIST_KEY:Ljava/lang/String; = "degradeBizErrorMappingApiList"

.field public static final DEGRADE_TO_SQLITE_KEY:Ljava/lang/String; = "degradeToSQLite"

.field public static final ENABLE_BIZ_ERROR_CODE_MAPPING_KEY:Ljava/lang/String; = "enableBizErrorCodeMapping"

.field public static final ENABLE_CACHE_KEY:Ljava/lang/String; = "enableCache"

.field public static final ENABLE_ERROR_CODE_MAPPING_KEY:Ljava/lang/String; = "enableErrorCodeMapping"

.field public static final ENABLE_MTOPSDK_PROPERTY_KEY:Ljava/lang/String; = "enableProperty"

.field public static final ENABLE_SPDY_KEY:Ljava/lang/String; = "enableSpdy"

.field public static final ENABLE_SSL_KEY:Ljava/lang/String; = "enableSsl"

.field public static final ENABLE_UNIT_KEY:Ljava/lang/String; = "enableUnit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ERROR_MAPPING_MSG_KEY:Ljava/lang/String; = "errorMappingMsg"

.field public static final GZIP_THRESHOLD_KEY:Ljava/lang/String; = "gzipThresHold"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INDIVIDUAL_API_LOCK_INTERVAL_KEY:Ljava/lang/String; = "individualApiLockInterval"

.field public static final REMOVE_CACHE_BLOCK_LIST_KEY:Ljava/lang/String; = "removeCacheBlockList"

.field public static final SEGMENT_RETRY_TIMES_KEY:Ljava/lang/String; = "segmentRetryTimes"

.field public static final SEGMENT_SIZE_MAP_KEY:Ljava/lang/String; = "segmentSizeMap"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.SwitchConfigUtil"

.field public static final UPLOAD_THREAD_NUMS_KEY:Ljava/lang/String; = "uploadThreadNums"

.field public static final USEHTTPS_BIZCODE_SET_KEY:Ljava/lang/String; = "useHttpsBizcodeSet"

.field private static listener:Lmtopsdk/common/config/MtopConfigListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->listener:Lmtopsdk/common/config/MtopConfigListener;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p0, p1, p2}, Lmtopsdk/common/config/MtopConfigListener;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "mtopsdk.SwitchConfigUtil"

    const-string p1, "[getSwitchConfig] MtopConfigListener is null"

    .line 70
    invoke-static {p0, p1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public static getSwitchConfigByGroupName(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lmtopsdk/common/util/SwitchConfigUtil;->listener:Lmtopsdk/common/config/MtopConfigListener;

    if-eqz v0, :cond_0

    .line 81
    invoke-interface {v0, p0}, Lmtopsdk/common/config/MtopConfigListener;->getSwitchConfigByGroupName(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "mtopsdk.SwitchConfigUtil"

    const-string v0, "[getSwitchConfigByGroupName] MtopConfigListener is null"

    .line 83
    invoke-static {p0, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setMtopConfigListener(Lmtopsdk/common/config/MtopConfigListener;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 56
    sput-object p0, Lmtopsdk/common/util/SwitchConfigUtil;->listener:Lmtopsdk/common/config/MtopConfigListener;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
