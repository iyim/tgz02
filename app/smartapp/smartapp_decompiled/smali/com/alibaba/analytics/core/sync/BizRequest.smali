.class public Lcom/alibaba/analytics/core/sync/BizRequest;
.super Ljava/lang/Object;
.source "BizRequest.java"


# static fields
.field private static final BYTE_ZERO:B = 0x0t

.field private static final FLAGS_GET_CONFIG:B = 0x20t

.field private static final FLAGS_GZIP:B = 0x1t

.field private static final FLAGS_GZIP_FLUSH_DIC:B = 0x2t

.field private static final FLAGS_KEEP_ALIVE:B = 0x8t

.field private static final FLAGS_REAL_TIME_DEBUG:B = 0x10t

.field private static final HEAD_LENGTH:I = 0x8

.field private static final LOG_SEPARATE:Ljava/lang/String;

.field private static final NeedConfigByResponse:Z = true

.field private static final NeedMiniWua:Z = true

.field private static final PAYLOAD_MAX_LENGTH:I = 0x1000000

.field private static final SplitNumber:I = 0x22

.field private static bTestFlowGenterClsExist:Z

.field private static flowClz:Ljava/lang/Class;

.field private static mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private static mGZIPOutputStream:Ljava/util/zip/GZIPOutputStream;

.field static mMiniWua:Ljava/lang/String;

.field private static mMiniWuaIndex:I

.field public static final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field private static mReceivedDataLen:J

.field static mResponseAdditionalData:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    .line 38
    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWua:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 50
    sput-wide v1, Lcom/alibaba/analytics/core/sync/BizRequest;->mReceivedDataLen:J

    const/4 v1, 0x0

    .line 51
    sput-boolean v1, Lcom/alibaba/analytics/core/sync/BizRequest;->bTestFlowGenterClsExist:Z

    .line 52
    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->flowClz:Ljava/lang/Class;

    .line 53
    sput v1, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWuaIndex:I

    const/4 v1, 0x1

    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alibaba/analytics/core/sync/BizRequest;->LOG_SEPARATE:Ljava/lang/String;

    .line 57
    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mGZIPOutputStream:Ljava/util/zip/GZIPOutputStream;

    .line 58
    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static closeOutputStream()V
    .locals 1

    .line 333
    sget-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mGZIPOutputStream:Ljava/util/zip/GZIPOutputStream;

    invoke-static {v0}, Lcom/alibaba/analytics/core/sync/BizRequest;->closeOutputStream(Ljava/io/OutputStream;)V

    .line 334
    sget-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lcom/alibaba/analytics/core/sync/BizRequest;->closeOutputStream(Ljava/io/OutputStream;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static closeOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 340
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 342
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static getHead()Ljava/lang/String;
    .locals 16

    .line 243
    invoke-static {}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getAppkey()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 246
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/Variables;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    .line 252
    :cond_0
    invoke-static {v1}, Lcom/alibaba/analytics/utils/UTMCDevice;->getDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    sget-object v4, Lcom/alibaba/analytics/core/model/LogField;->APPVERSION:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v4}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v3

    .line 260
    :cond_2
    invoke-static {}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getChannel()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v3

    :cond_3
    if-eqz v1, :cond_4

    .line 266
    sget-object v3, Lcom/alibaba/analytics/core/model/LogField;->UTDID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 268
    :cond_4
    invoke-static {}, Lcom/alibaba/analytics/version/UTBuildInfo;->getInstance()Lcom/alibaba/analytics/version/UTBuildInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/version/UTBuildInfo;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->isIpv6Connection()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "1"

    goto :goto_0

    :cond_5
    const-string v6, "0"

    .line 276
    :goto_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/analytics/core/Variables;->isRealTimeDebug()Z

    move-result v7

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x7

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v7, :cond_6

    const/16 v7, 0x8

    .line 277
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v15

    aput-object v2, v7, v14

    aput-object v4, v7, v12

    aput-object v5, v7, v11

    aput-object v3, v7, v10

    aput-object v1, v7, v9

    aput-object v6, v7, v8

    .line 279
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getDebugKey()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v13

    const-string v0, "ak=%s&av=%s&avsys=%s&c=%s&d=%s&sv=%s&ipv6=%s&dk=%s"

    .line 277
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 281
    :cond_6
    new-array v7, v13, [Ljava/lang/Object;

    aput-object v0, v7, v15

    aput-object v2, v7, v14

    aput-object v4, v7, v12

    aput-object v5, v7, v11

    aput-object v3, v7, v10

    aput-object v1, v7, v9

    aput-object v6, v7, v8

    const-string v0, "ak=%s&av=%s&avsys=%s&c=%s&d=%s&sv=%s&ipv6=%s"

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 286
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->isHttpService()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 289
    sget v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWuaIndex:I

    if-nez v0, :cond_7

    .line 290
    invoke-static {}, Lcom/alibaba/analytics/utils/WuaHelper;->getMiniWua()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWua:Ljava/lang/String;

    .line 292
    :cond_7
    sget v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWuaIndex:I

    add-int/2addr v0, v14

    sput v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWuaIndex:I

    .line 293
    sget v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWuaIndex:I

    const/16 v2, 0x32

    if-le v0, v2, :cond_9

    .line 294
    sput v15, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWuaIndex:I

    goto :goto_2

    .line 297
    :cond_8
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetUtil;->refreshMiniWua()V

    .line 299
    :cond_9
    :goto_2
    sget-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWua:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "&"

    if-nez v0, :cond_a

    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "wua="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mMiniWua:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ut_sample"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->getInstance()Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "utap_system"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->getInstance()Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ap_stat"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->getInstance()Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ap_alarm"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->getInstance()Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;

    move-result-object v3

    const-string v5, "ap_alarm"

    invoke-virtual {v3, v5}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ap_counter"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->getInstance()Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;

    move-result-object v3

    const-string v5, "ap_counter"

    invoke-virtual {v3, v5}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ut_bussiness"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->getInstance()Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;

    move-result-object v3

    const-string/jumbo v5, "ut_bussiness"

    invoke-virtual {v3, v5}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ut_realtime"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->getInstance()Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;

    move-result-object v0

    const-string/jumbo v2, "ut_realtime"

    invoke-virtual {v0, v2}, Lcom/alibaba/analytics/core/config/timestamp/ConfigTimeStampMgr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    new-array v1, v14, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send url :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    const-string v2, "PostData"

    invoke-static {v2, v1}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getPackRequest(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    .line 61
    invoke-static {p0, v0}, Lcom/alibaba/analytics/core/sync/BizRequest;->getPackRequest(Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method static getPackRequest(Ljava/util/Map;I)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->isGzipUpload()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->isHttpService()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/core/sync/TnetUtil;->initTnetStream()V

    .line 79
    sget-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mGZIPOutputStream:Ljava/util/zip/GZIPOutputStream;

    if-eqz v0, :cond_1

    .line 81
    invoke-static {p0}, Lcom/alibaba/analytics/core/sync/BizRequest;->getPayloadByDictZip(Ljava/util/Map;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 82
    sget-object p0, Lcom/alibaba/analytics/core/sync/BizRequest;->mGZIPOutputStream:Ljava/util/zip/GZIPOutputStream;

    invoke-virtual {p0}, Ljava/util/zip/GZIPOutputStream;->flush()V

    .line 83
    sget-object p0, Lcom/alibaba/analytics/core/sync/BizRequest;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 84
    sget-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v2, 0x2

    goto :goto_1

    .line 88
    :cond_1
    invoke-static {p0}, Lcom/alibaba/analytics/core/sync/BizRequest;->getPayloadByDictZip(Ljava/util/Map;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/analytics/utils/GzipUtils;->gzip([B)[B

    move-result-object p0

    goto :goto_1

    .line 74
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/alibaba/analytics/core/sync/BizRequest;->getPayload(Ljava/util/Map;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/analytics/utils/GzipUtils;->gzip([B)[B

    move-result-object p0

    const/4 v1, 0x1

    :goto_1
    const/4 v0, 0x0

    if-nez p0, :cond_3

    return-object v0

    .line 96
    :cond_3
    array-length v3, p0

    const/high16 v4, 0x1000000

    if-lt v3, v4, :cond_5

    .line 97
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/Variables;->isSelfMonitorTurnOn()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    sget-object p1, Lcom/alibaba/analytics/core/sync/BizRequest;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->DATALEN_OVERFLOW:I

    array-length p0, p0

    .line 99
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 98
    invoke-static {v1, p0, v2}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    :cond_4
    return-object v0

    .line 104
    :cond_5
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 106
    array-length v1, p0

    invoke-static {v1}, Lcom/alibaba/analytics/utils/ByteUtils;->intToBytes3(I)[B

    move-result-object v1

    .line 107
    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 108
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    or-int/lit8 p1, v2, 0x8

    int-to-byte p1, p1

    .line 110
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/Variables;->isRealTimeDebug()Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    :cond_6
    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    .line 116
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 118
    invoke-virtual {v3, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 119
    invoke-virtual {v3, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 121
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 123
    :try_start_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 125
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_2
    return-object p0
.end method

.method static getPackRequestByRealtime(Ljava/util/Map;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    .line 65
    invoke-static {p0, v0}, Lcom/alibaba/analytics/core/sync/BizRequest;->getPackRequest(Ljava/util/Map;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static getPayload(Ljava/util/Map;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    invoke-static {}, Lcom/alibaba/analytics/core/sync/BizRequest;->getHead()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Lcom/alibaba/analytics/utils/ByteUtils;->intToBytes2(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {v2}, Lcom/alibaba/analytics/utils/ByteUtils;->intToBytes2(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_0
    if-eqz p0, :cond_2

    .line 140
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 141
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 144
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    invoke-static {v4}, Lcom/alibaba/analytics/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 158
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    .line 161
    invoke-static {v4}, Lcom/alibaba/analytics/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v4

    .line 162
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 163
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 165
    :cond_1
    invoke-static {v2}, Lcom/alibaba/analytics/utils/ByteUtils;->intToBytes4(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 147
    :catch_0
    :try_start_1
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "BizRequest"

    const/4 v6, 0x4

    .line 148
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "EventId NumberFormatException. eventId"

    aput-object v7, v6, v2

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    const-string v7, ",eventLogs"

    aput-object v7, v6, v3

    const/4 v3, 0x3

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 172
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object p0
.end method

.method private static getPayloadByDictZip(Ljava/util/Map;)[B
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 182
    invoke-static {}, Lcom/alibaba/analytics/core/sync/BizRequest;->getHead()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getHeadBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p0, :cond_5

    .line 184
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 185
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 189
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    invoke-static {v5}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getLengthBytes(I)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 203
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 205
    sget-object v5, Lcom/alibaba/analytics/core/sync/BizRequest;->LOG_SEPARATE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 206
    array-length v5, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 207
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 208
    invoke-static {v7}, Lcom/alibaba/analytics/core/sync/BizRequest;->getSplitResult(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const/16 v8, 0x22

    .line 209
    array-length v9, v7

    if-ne v8, v9, :cond_1

    .line 210
    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_0

    aget-object v10, v7, v9

    .line 211
    invoke-static {v10}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 213
    :cond_0
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 217
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/analytics/utils/ZipDictUtils;->getLengthBytes(I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 218
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 219
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 192
    :catch_0
    :try_start_1
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "BizRequest"

    const/4 v7, 0x4

    .line 193
    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "EventId NumberFormatException. eventId"

    aput-object v8, v7, v4

    const/4 v4, 0x1

    aput-object v3, v7, v4

    const/4 v3, 0x2

    const-string v4, ",eventLogs"

    aput-object v4, v7, v3

    const/4 v3, 0x3

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    goto/16 :goto_0

    .line 225
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 232
    :cond_5
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 234
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object p0
.end method

.method private static getSplitResult(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/16 v0, 0x22

    .line 349
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 351
    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    const-string/jumbo v3, "||"

    .line 352
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 354
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    goto :goto_1

    .line 357
    :cond_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v2, v3, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/16 v1, 0x21

    .line 361
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method static initOutputStream()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 321
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 322
    invoke-static {}, Lcom/alibaba/analytics/core/sync/BizRequest;->closeOutputStream()V

    .line 323
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 325
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    sget-object v1, Lcom/alibaba/analytics/core/sync/BizRequest;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mGZIPOutputStream:Ljava/util/zip/GZIPOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static parseResult([B)I
    .locals 8

    const/4 v0, -0x1

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p0, :cond_6

    .line 368
    array-length v4, p0

    const/16 v5, 0xc

    if-ge v4, v5, :cond_0

    goto :goto_3

    .line 372
    :cond_0
    array-length v4, p0

    int-to-long v6, v4

    sput-wide v6, Lcom/alibaba/analytics/core/sync/BizRequest;->mReceivedDataLen:J

    const/4 v4, 0x3

    .line 373
    invoke-static {p0, v3, v4}, Lcom/alibaba/analytics/utils/ByteUtils;->bytesToInt([BII)I

    move-result v4

    const/16 v6, 0x8

    add-int/2addr v4, v6

    .line 374
    array-length v7, p0

    if-eq v4, v7, :cond_1

    .line 377
    new-array p0, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "recv len error"

    aput-object v4, p0, v2

    invoke-static {v1, p0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    const/4 v0, 0x5

    .line 379
    aget-byte v0, p0, v0

    and-int/2addr v0, v3

    if-ne v3, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x4

    .line 384
    invoke-static {p0, v6, v4}, Lcom/alibaba/analytics/utils/ByteUtils;->bytesToInt([BII)I

    move-result v4

    .line 385
    array-length v6, p0

    sub-int/2addr v6, v5

    if-ltz v6, :cond_3

    array-length v6, p0

    sub-int/2addr v6, v5

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-lez v6, :cond_5

    if-eqz v0, :cond_4

    .line 388
    new-array v0, v6, [B

    .line 389
    invoke-static {p0, v5, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    invoke-static {v0}, Lcom/alibaba/analytics/utils/GzipUtils;->unGzip([B)[B

    move-result-object p0

    .line 391
    new-instance v0, Ljava/lang/String;

    array-length v5, p0

    invoke-direct {v0, p0, v2, v5}, Ljava/lang/String;-><init>([BII)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_2

    .line 393
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, v5, v6}, Ljava/lang/String;-><init>([BII)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    .line 396
    sput-object p0, Lcom/alibaba/analytics/core/sync/BizRequest;->mResponseAdditionalData:Ljava/lang/String;

    :goto_2
    move v0, v4

    goto :goto_4

    .line 370
    :cond_6
    :goto_3
    new-array p0, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "recv errCode UNKNOWN_ERROR"

    aput-object v4, p0, v2

    invoke-static {v1, p0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    const/16 p0, 0x6b

    if-ne p0, v0, :cond_7

    .line 402
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/analytics/core/Variables;->setHttpService(Z)V

    :cond_7
    const/16 p0, 0x6d

    if-ne p0, v0, :cond_8

    .line 405
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/analytics/core/Variables;->setGzipUpload(Z)V

    :cond_8
    const/16 p0, 0x73

    if-ne p0, v0, :cond_9

    .line 408
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/analytics/core/Variables;->setRealtimeServiceClosed(Z)V

    :cond_9
    const/16 p0, 0x74

    if-ne p0, v0, :cond_a

    .line 411
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/alibaba/analytics/core/Variables;->setAllServiceClosed(Z)V

    :cond_a
    const/4 p0, 0x2

    .line 413
    new-array p0, p0, [Ljava/lang/Object;

    const-string v4, "errCode"

    aput-object v4, p0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v3

    invoke-static {v1, p0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method static recordTraffic(J)V
    .locals 14

    const-string/jumbo v0, "ut"

    const-wide/16 v1, 0x0

    .line 420
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 422
    sget-boolean v4, Lcom/alibaba/analytics/core/sync/BizRequest;->bTestFlowGenterClsExist:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    sget-object v4, Lcom/alibaba/analytics/core/sync/BizRequest;->flowClz:Ljava/lang/Class;

    if-eqz v4, :cond_0

    const-string v4, "com.taobao.analysis.FlowCenter"

    .line 423
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/alibaba/analytics/core/sync/BizRequest;->flowClz:Ljava/lang/Class;

    .line 424
    sput-boolean v5, Lcom/alibaba/analytics/core/sync/BizRequest;->bTestFlowGenterClsExist:Z

    .line 426
    :cond_0
    sget-object v4, Lcom/alibaba/analytics/core/sync/BizRequest;->flowClz:Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 427
    sget-object v4, Lcom/alibaba/analytics/core/sync/BizRequest;->flowClz:Ljava/lang/Class;

    const-string v6, "getInstance"

    invoke-static {v4, v6}, Lcom/alibaba/analytics/utils/ReflectUtils;->invokeStaticMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v6, ""

    const/4 v7, 0x4

    .line 429
    new-array v8, v7, [Ljava/lang/Object;

    const-string/jumbo v9, "sendBytes"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "mReceivedDataLen"

    const/4 v11, 0x2

    aput-object v9, v8, v11

    sget-wide v12, Lcom/alibaba/analytics/core/sync/BizRequest;->mReceivedDataLen:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-static {v6, v8}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v6, "commitFlow"

    const/4 v8, 0x6

    .line 430
    new-array v9, v8, [Ljava/lang/Object;

    aput-object v3, v9, v10

    aput-object v0, v9, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v9, v11

    aput-object v0, v9, v12

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v9, v7

    sget-wide p0, Lcom/alibaba/analytics/core/sync/BizRequest;->mReceivedDataLen:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 p1, 0x5

    aput-object p0, v9, p1

    new-array p0, v8, [Ljava/lang/Class;

    const-class v0, Landroid/content/Context;

    aput-object v0, p0, v10

    const-class v0, Ljava/lang/String;

    aput-object v0, p0, v5

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v0, p0, v11

    const-class v0, Ljava/lang/String;

    aput-object v0, p0, v12

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, p0, v7

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, p0, p1

    invoke-static {v4, v6, v9, p0}, Lcom/alibaba/analytics/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 437
    sput-wide v1, Lcom/alibaba/analytics/core/sync/BizRequest;->mReceivedDataLen:J

    throw p0

    :catch_0
    :cond_1
    :goto_0
    sput-wide v1, Lcom/alibaba/analytics/core/sync/BizRequest;->mReceivedDataLen:J

    return-void
.end method
