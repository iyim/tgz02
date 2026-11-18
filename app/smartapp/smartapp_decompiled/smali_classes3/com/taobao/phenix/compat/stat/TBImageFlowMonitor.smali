.class public Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;
.super Lcom/taobao/phenix/compat/stat/TBImageBaseMonitor;
.source "TBImageFlowMonitor.java"

# interfaces
.implements Lcom/taobao/phenix/request/ImageFlowMonitor;
.implements Lcom/taobao/pexode/Pexode$ForcedDegradationListener;
.implements Lcom/taobao/rxm/schedule/PairingThrottlingScheduler$DegradationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;
    }
.end annotation


# static fields
.field static final BITMAP_POOL_ALARM_POINT:Ljava/lang/String; = "BitmapPoolHit"

.field static final BUSINESS_DIMEN:Ljava/lang/String; = "bizName"

.field static final CDN_IP_PORT_DIMEN:Ljava/lang/String; = "cdnIpPort"

.field static final CONNECT_TYPE_DIMEN:Ljava/lang/String; = "connectType"

.field static final DATA_FROM_DIMEN:Ljava/lang/String; = "dataFrom"

.field static final DISK_CACHE_ALARM_POINT:Ljava/lang/String; = "DiskCacheHit"

.field static final DOMAIN_DIMEN:Ljava/lang/String; = "domain"

.field static final ERROR_ANALYSIS_CODE:Ljava/lang/String; = "analysisErrorCode"

.field static final ERROR_DESC:Ljava/lang/String; = "desc"

.field static final ERROR_DESC_PREFIX:Ljava/lang/String; = "analysisReason::"

.field static final ERROR_DIMEN:Ljava/lang/String; = "error"

.field static final ERROR_ORIGIN_CODE:Ljava/lang/String; = "originErrorCode"

.field static final ERROR_POINT:Ljava/lang/String; = "ImageError"

.field static final ERROR_URL:Ljava/lang/String; = "url"

.field static final FIRST_DATA_MEASURE:Ljava/lang/String; = "firstData"

.field static final FORCED_NO_ASHMEM_COUNTER_POINT:Ljava/lang/String; = "Forced2NoAshmem"

.field static final FORCED_NO_IN_BITMAP_COUNTER_POINT:Ljava/lang/String; = "Forced2NoInBitmap"

.field static final FORCED_SYSTEM_COUNTER_POINT:Ljava/lang/String; = "Forced2System"

.field static final FORCED_UNLIMITED_NETWORK_COUNTER_POINT:Ljava/lang/String; = "Forced2UnlimitedNetwork"

.field static final FORMAT_DIMEN:Ljava/lang/String; = "format"

.field static final HIT_CDN_CACHE_DIMEN:Ljava/lang/String; = "hitCdnCache"

.field static final MODULE_NAME:Ljava/lang/String; = "ImageLib_Rx"

.field static final MONITOR_POINT:Ljava/lang/String; = "ImageFlow"

.field static final NAVI_URL_DIMEN:Ljava/lang/String; = "naviUrl"

.field static final RESPONSE_CODE_MEASURE:Ljava/lang/String; = "responseCode"

.field static final SCHEDULE_FACTOR_DIMEN:Ljava/lang/String; = "scheduleFactor"

.field static final SEND_BEFORE_MEASURE:Ljava/lang/String; = "sendBefore"

.field static final SIZE_MEASURE:Ljava/lang/String; = "size"

.field static final SIZ_RANGE_DIMEN:Ljava/lang/String; = "sizeRange"

.field static final SPEED_MEASURE:Ljava/lang/String; = "speed"

.field private static final TAG:Ljava/lang/String; = "FlowMonitor"

.field static final WINDOW_NAME_DIMEN:Ljava/lang/String; = "windowName"


# instance fields
.field private mDegradationBits:I

.field private mNavInfoObtainer:Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;

.field private final mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

.field private mNonCriticalErrorReporter:Lcom/taobao/phenix/compat/stat/NonCriticalErrorReporter;

.field private mNonCriticalReportCoverage:I

.field private mRegisteredException:Z

.field protected mStatCoverage:I


# direct methods
.method public constructor <init>(IILcom/taobao/phenix/compat/stat/NetworkAnalyzer;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/taobao/phenix/compat/stat/TBImageBaseMonitor;-><init>()V

    .line 111
    iput-object p3, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    .line 112
    iput p1, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mStatCoverage:I

    .line 113
    iput p2, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNonCriticalReportCoverage:I

    return-void
.end method

.method public constructor <init>(ILcom/taobao/phenix/compat/stat/NetworkAnalyzer;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/taobao/phenix/compat/stat/TBImageBaseMonitor;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    .line 106
    iput p1, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mStatCoverage:I

    const/16 p1, 0x64

    .line 107
    iput p1, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNonCriticalReportCoverage:I

    return-void
.end method

.method private analyzeErrorCode(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 507
    instance-of v0, p1, Lcom/taobao/phenix/loader/network/IncompleteResponseException;

    if-eqz v0, :cond_0

    const-string p1, "101010"

    return-object p1

    .line 511
    :cond_0
    instance-of v0, p1, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;

    if-eqz v0, :cond_3

    .line 512
    nop

    nop

    invoke-virtual {p1}, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;->getHttpCode()I

    move-result p1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_1

    const-string p1, "102010"

    return-object p1

    :cond_1
    const/16 v0, 0x1f7

    if-ne p1, v0, :cond_2

    const-string p1, "103010"

    return-object p1

    :cond_2
    const-string p1, "104000"

    return-object p1

    .line 522
    :cond_3
    instance-of v0, p1, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;

    if-eqz v0, :cond_6

    .line 523
    move-object v0, p1

    nop

    nop

    invoke-static {v0}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->access$200(Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v1, :cond_4

    if-ge v0, v2, :cond_4

    const-string p1, "801010"

    return-object p1

    :cond_4
    const/4 v1, 0x4

    if-lt v0, v2, :cond_5

    if-ge v0, v1, :cond_5

    const-string p1, "801020"

    return-object p1

    :cond_5
    if-lt v0, v1, :cond_6

    const-string p1, "801090"

    return-object p1

    .line 535
    :cond_6
    iget-object v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    return-object v1

    .line 538
    :cond_7
    invoke-interface {v0, p1}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->isReadTimeoutException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "101011"

    return-object p1

    .line 541
    :cond_8
    iget-object v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v0, p1}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->isCertificateException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "103011"

    return-object p1

    .line 544
    :cond_9
    iget-object v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v0, p1}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->isInvalidHostException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "201010"

    return-object p1

    .line 547
    :cond_a
    iget-object v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v0, p1}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->isConnectTimeoutException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "201011"

    return-object p1

    .line 550
    :cond_b
    iget-object v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v0, p1}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->isInvalidUrlException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "201012"

    return-object p1

    .line 554
    :cond_c
    iget-object v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v0, p1}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->isIndifferentException(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "901000"

    return-object p1

    :cond_d
    return-object v1
.end method

.method private commitAlarm(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "ImageLib_Rx"

    if-ge v1, p2, :cond_1

    if-nez p4, :cond_0

    .line 377
    invoke-static {v2, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 379
    :cond_0
    invoke-static {v2, p1, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v0, p3, :cond_3

    const/4 p2, 0x0

    if-nez p4, :cond_2

    .line 385
    invoke-static {v2, p1, p2, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 387
    :cond_2
    invoke-static {v2, p1, p4, p2, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getBizIdFromExtras(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "bundle_biz_code"

    .line 221
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private static getHostFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "//"

    .line 203
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "://"

    .line 206
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x3

    .line 209
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_3

    return-object v1

    :cond_3
    const/16 v1, 0x2f

    .line 212
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_4

    .line 214
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 216
    :cond_4
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 229
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_0

    .line 230
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 231
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getMinimumScheduleTime2StatWaitSize()I
    .locals 1

    const/16 v0, 0x96

    return v0
.end method

.method public onDegrade2Unlimited()V
    .locals 4

    .line 584
    iget v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mDegradationBits:I

    and-int/lit8 v0, v0, -0x9

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mDegradationBits:I

    const-string v0, "ImageLib_Rx"

    const-string v1, "Forced2UnlimitedNetwork"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 585
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public onFail(Lcom/taobao/phenix/request/ImageStatistics;Ljava/lang/Throwable;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "unknown"

    const-string v6, "FlowMonitor"

    if-eqz p1, :cond_e

    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->isDuplicated()Z

    move-result v7

    if-nez v7, :cond_e

    instance-of v7, v1, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;

    if-nez v7, :cond_e

    iget-object v7, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    if-eqz v7, :cond_0

    .line 409
    invoke-interface {v7, v1}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->isNoNetworkException(Ljava/lang/Throwable;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto/16 :goto_6

    .line 414
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/phenix/request/ImageUriInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 419
    instance-of v8, v1, Lcom/taobao/phenix/loader/network/NetworkResponseException;

    .line 420
    invoke-static {v7}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->getHostFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getExtras()Ljava/util/Map;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->getBizIdFromExtras(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getFormat()Lcom/taobao/pexode/mimetype/MimeType;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 423
    invoke-virtual {v11}, Lcom/taobao/pexode/mimetype/MimeType;->getMinorName()Ljava/lang/String;

    move-result-object v2

    .line 430
    :cond_1
    instance-of v11, v1, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;

    const-string v12, "ImageLib_Rx"

    const-string v13, "format"

    const-string v14, "domain"

    const-string v15, "bizName"

    if-nez v11, :cond_2

    iget v11, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mStatCoverage:I

    invoke-virtual {v0, v11}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->filterOutThisStat(I)Z

    move-result v11

    if-nez v11, :cond_2

    .line 431
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v11

    .line 432
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v3

    .line 433
    invoke-virtual {v11, v14, v9}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v4, "error"

    const-string v5, "1"

    .line 434
    invoke-virtual {v11, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 435
    invoke-virtual {v11, v15, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 436
    invoke-virtual {v11, v13, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v4, "dataFrom"

    const-string v5, "0"

    .line 437
    invoke-virtual {v11, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v4, "ImageFlow"

    .line 438
    invoke-static {v12, v4, v11, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 441
    :cond_2
    iget-object v3, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNavInfoObtainer:Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;

    if-eqz v3, :cond_3

    .line 442
    invoke-interface {v3}, Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;->getCurrentWindowName()Ljava/lang/String;

    move-result-object v3

    .line 443
    iget-object v5, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNavInfoObtainer:Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;

    invoke-interface {v5}, Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;->getCurrentUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    const-string v11, "naviUrl"

    const-string v4, "windowName"

    move-object/from16 v17, v6

    const-string v6, "url"

    if-eqz v8, :cond_7

    .line 446
    invoke-direct {v0, v1}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->analyzeErrorCode(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->registerErrorMonitor()V

    .line 448
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v8

    .line 449
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v9

    .line 450
    invoke-virtual {v8, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 451
    invoke-virtual {v8, v15, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v6, "analysisErrorCode"

    .line 452
    invoke-virtual {v8, v6, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 453
    move-object v6, v1

    check-cast v6, Lcom/taobao/phenix/loader/network/NetworkResponseException;

    invoke-virtual {v6}, Lcom/taobao/phenix/loader/network/NetworkResponseException;->getHttpCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v10, "originErrorCode"

    invoke-virtual {v8, v10, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "analysisReason::"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "desc"

    invoke-virtual {v8, v10, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-nez v3, :cond_4

    if-eqz v5, :cond_5

    .line 456
    :cond_4
    invoke-virtual {v8, v4, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 457
    invoke-virtual {v8, v11, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    :cond_5
    const-string v4, "ImageError"

    .line 459
    invoke-static {v12, v4, v8, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    :cond_6
    move-object/from16 v16, v2

    move-object/from16 v10, v17

    const/4 v2, 0x0

    const/4 v8, 0x1

    goto/16 :goto_5

    .line 461
    :cond_7
    iget v8, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNonCriticalReportCoverage:I

    invoke-virtual {v0, v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->filterOutThisStat(I)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNonCriticalErrorReporter:Lcom/taobao/phenix/compat/stat/NonCriticalErrorReporter;

    if-eqz v8, :cond_d

    .line 462
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 463
    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    invoke-interface {v8, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    invoke-interface {v8, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-interface {v8, v15, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v6, "size"

    invoke-interface {v8, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-interface {v8, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->isRetrying()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "isRetrying"

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-static {}, Lcom/taobao/pexode/Pexode;->isAshmemSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "supportAshmem"

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-static {}, Lcom/taobao/pexode/Pexode;->isInBitmapSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "supportInBitmap"

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget v2, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mDegradationBits:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "degradationBits"

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {}, Lcom/taobao/phenix/intf/Phenix;->instance()Lcom/taobao/phenix/intf/Phenix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/intf/Phenix;->schedulerBuilder()Lcom/taobao/phenix/builder/SchedulerBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/builder/SchedulerBuilder;->build()Lcom/taobao/rxm/schedule/SchedulerSupplier;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/rxm/schedule/SchedulerSupplier;->forCpuBound()Lcom/taobao/rxm/schedule/Scheduler;

    move-result-object v2

    invoke-interface {v2}, Lcom/taobao/rxm/schedule/Scheduler;->getStatus()Ljava/lang/String;

    move-result-object v2

    const-string v4, "statusOfTBReal"

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "sdkInt"

    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getExtras()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 478
    iget-object v4, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    if-eqz v4, :cond_8

    .line 479
    invoke-interface {v4}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->keyOfCdnIpPort()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 480
    iget-object v6, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v6}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->keyOfConnectType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 481
    iget-object v9, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v9}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->keyOfHitCdnCache()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v16, v4

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    :goto_1
    const-string v4, ""

    if-eqz v16, :cond_9

    move-object/from16 v9, v16

    goto :goto_2

    :cond_9
    move-object v9, v4

    :goto_2
    const-string v10, "cdnIpPort"

    .line 483
    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_a

    goto :goto_3

    :cond_a
    move-object v6, v4

    :goto_3
    const-string v9, "connectType"

    .line 484
    invoke-interface {v8, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_b

    goto :goto_4

    :cond_b
    move-object v2, v4

    :goto_4
    const-string v4, "hitCdnCache"

    .line 485
    invoke-interface {v8, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/tcommon/core/RuntimeUtil;->getClassShortName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 488
    instance-of v4, v1, Lcom/taobao/phenix/decode/DecodeException;

    if-eqz v4, :cond_c

    .line 489
    move-object v4, v1

    nop

    nop

    .line 490
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/taobao/phenix/decode/DecodeException;->getDecodedError()Lcom/taobao/phenix/decode/DecodeException$DecodedError;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "[Local?"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/taobao/phenix/decode/DecodeException;->isLocalUri()Z

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Disk?"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/taobao/phenix/decode/DecodeException;->isDataFromDisk()Z

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    invoke-virtual {v4}, Lcom/taobao/phenix/decode/DecodeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_c

    move-object v1, v4

    :cond_c
    move-object v4, v2

    .line 496
    iget-object v2, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNonCriticalErrorReporter:Lcom/taobao/phenix/compat/stat/NonCriticalErrorReporter;

    invoke-interface {v2, v4, v1, v8}, Lcom/taobao/phenix/compat/stat/NonCriticalErrorReporter;->onNonCriticalErrorHappen(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    const/4 v2, 0x2

    .line 497
    new-array v6, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v6, v2

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-string v9, "report non-critical error, details=%s, path=%s"

    move-object/from16 v10, v17

    invoke-static {v10, v9, v6}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v16, v4

    goto :goto_5

    :cond_d
    move-object/from16 v10, v17

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/16 v16, 0x0

    :goto_5
    const/4 v4, 0x5

    .line 500
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v16, v4, v2

    aput-object v1, v4, v8

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v5, v4, v1

    const/4 v1, 0x4

    aput-object v7, v4, v1

    const-string v1, "commit complete onFail, analysisCode=%s, throwable=%s, window=%s, navi=%s, path=%s"

    invoke-static {v10, v1, v4}, Lcom/taobao/phenix/common/UnitedLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_e
    :goto_6
    move-object v10, v6

    const/4 v1, 0x2

    .line 410
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/phenix/request/ImageUriInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    :cond_f
    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "skipped commit onFail, statistics=%s, path=%s"

    invoke-static {v10, v2, v1}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onForcedDegrade2NoAshmem()V
    .locals 4

    .line 570
    iget v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mDegradationBits:I

    and-int/lit8 v0, v0, -0x3

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mDegradationBits:I

    const-string v0, "ImageLib_Rx"

    const-string v1, "Forced2NoAshmem"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 571
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public onForcedDegrade2NoInBitmap()V
    .locals 4

    .line 577
    iget v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mDegradationBits:I

    and-int/lit8 v0, v0, -0x5

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mDegradationBits:I

    const-string v0, "ImageLib_Rx"

    const-string v1, "Forced2NoInBitmap"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 578
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public onForcedDegrade2System()V
    .locals 4

    .line 563
    iget v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mDegradationBits:I

    and-int/lit8 v0, v0, -0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mDegradationBits:I

    const-string v0, "ImageLib_Rx"

    const-string v1, "Forced2System"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 564
    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public onSuccess(Lcom/taobao/phenix/request/ImageStatistics;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "FlowMonitor"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1c

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->isDuplicated()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-result-object v5

    sget-object v6, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    if-eq v5, v6, :cond_1c

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getDetailCost()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_0

    goto/16 :goto_b

    .line 242
    :cond_0
    iget v5, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mStatCoverage:I

    invoke-virtual {v0, v5}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->filterOutThisStat(I)Z

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_2

    .line 243
    invoke-static {v6}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 244
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "filter this stat cause of sampling, statistic=%s "

    invoke-static {v2, v1, v4}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 249
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getUriInfo()Lcom/taobao/phenix/request/ImageUriInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/phenix/request/ImageUriInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->registerAppMonitor()V

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-result-object v7

    .line 253
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v8

    .line 254
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v9

    .line 255
    invoke-static {v5}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->getHostFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "domain"

    invoke-virtual {v8, v11, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v10, "error"

    const-string v11, "0"

    .line 256
    invoke-virtual {v8, v10, v11}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getExtras()Ljava/util/Map;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->getBizIdFromExtras(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "bizName"

    invoke-virtual {v8, v11, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getFormat()Lcom/taobao/pexode/mimetype/MimeType;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 259
    invoke-virtual {v10}, Lcom/taobao/pexode/mimetype/MimeType;->getMinorName()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_3
    const-string v10, "unknown"

    :goto_0
    const-string v11, "format"

    invoke-virtual {v8, v11, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 260
    iget v10, v7, Lcom/taobao/phenix/request/ImageStatistics$FromType;->value:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "dataFrom"

    invoke-virtual {v8, v11, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 263
    iget-object v10, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNavInfoObtainer:Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;

    if-eqz v10, :cond_4

    .line 264
    invoke-interface {v10}, Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;->getCurrentWindowName()Ljava/lang/String;

    move-result-object v10

    const-string v12, "windowName"

    invoke-virtual {v8, v12, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 265
    iget-object v12, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNavInfoObtainer:Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;

    invoke-interface {v12}, Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;->getCurrentUrl()Ljava/lang/String;

    move-result-object v12

    const-string v13, "naviUrl"

    invoke-virtual {v8, v13, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    .line 268
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getDetailCost()Ljava/util/Map;

    move-result-object v12

    const-string v13, "waitForMain"

    .line 269
    invoke-direct {v0, v9, v13, v12}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    const-string v13, "totalTime"

    .line 270
    invoke-direct {v0, v9, v13, v12}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    const-string v13, "memoryLookup"

    .line 271
    invoke-direct {v0, v9, v13, v12}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    const-string v13, "scheduleTime"

    .line 274
    invoke-direct {v0, v9, v13, v12}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->getMinimumScheduleTime2StatWaitSize()I

    move-result v14

    div-int/2addr v13, v14

    .line 275
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "scheduleFactor"

    invoke-virtual {v8, v15, v14}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-lez v13, :cond_5

    const-string v13, "masterWaitSize"

    .line 277
    invoke-direct {v0, v9, v13, v12}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    const-string v13, "networkWaitSize"

    .line 278
    invoke-direct {v0, v9, v13, v12}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    const-string v13, "decodeWaitSize"

    .line 279
    invoke-direct {v0, v9, v13, v12}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    .line 283
    :cond_5
    sget-object v13, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_MEMORY_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    if-eq v7, v13, :cond_6

    const/4 v7, 0x1

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_2
    const/4 v13, 0x2

    if-eqz v7, :cond_19

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getSize()I

    move-result v14

    const-string v15, "decode"

    .line 286
    invoke-direct {v0, v9, v15, v12}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    move-object/from16 v16, v12

    int-to-double v11, v14

    const-string v15, "size"

    .line 287
    invoke-virtual {v9, v15, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const/16 v11, 0x5000

    if-gt v14, v11, :cond_7

    const-string v11, "0_20K"

    goto :goto_4

    :cond_7
    const v11, 0xc800

    if-gt v14, v11, :cond_8

    const-string v11, "20_50K"

    goto :goto_4

    :cond_8
    const v11, 0x19000

    if-gt v14, v11, :cond_9

    const-string v11, "50_100K"

    goto :goto_4

    :cond_9
    const v11, 0x32000

    if-gt v14, v11, :cond_a

    const-string v11, "100_200K"

    goto :goto_4

    :cond_a
    const v11, 0x7d000

    if-gt v14, v11, :cond_b

    const-string v11, "200_500K"

    goto :goto_4

    .line 303
    :cond_b
    rem-int v12, v14, v11

    if-nez v12, :cond_c

    move v12, v14

    goto :goto_3

    :cond_c
    add-int v12, v14, v11

    .line 306
    div-int/2addr v12, v11

    mul-int v12, v12, v11

    .line 308
    :goto_3
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v11, v12, v11

    div-int/lit16 v11, v11, 0x400

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "_"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v12, v12, 0x400

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "K"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_4
    const-string v12, "sizeRange"

    .line 310
    invoke-virtual {v8, v12, v11}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 311
    sget-object v11, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$1;->$SwitchMap$com$taobao$phenix$request$ImageStatistics$FromType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-result-object v12

    invoke-virtual {v12}, Lcom/taobao/phenix/request/ImageStatistics$FromType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v4, :cond_18

    const-string v12, "cacheLookup"

    if-eq v11, v13, :cond_17

    if-eq v11, v6, :cond_16

    const/4 v15, 0x4

    if-eq v11, v15, :cond_d

    goto/16 :goto_8

    :cond_d
    move-object/from16 v11, v16

    .line 323
    invoke-direct {v0, v9, v12, v11}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    const-string v12, "connect"

    .line 324
    invoke-direct {v0, v9, v12, v11}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    move-result v12

    const-string v15, "download"

    .line 325
    invoke-direct {v0, v9, v15, v11}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    move-result v11

    .line 328
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getExtras()Ljava/util/Map;

    move-result-object v15

    if-eqz v15, :cond_14

    .line 329
    iget-object v6, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    if-eqz v6, :cond_14

    .line 330
    invoke-interface {v6}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->keyOfHitCdnCache()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_e

    const-string v13, "hitCdnCache"

    .line 331
    invoke-virtual {v8, v13, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 333
    :cond_e
    iget-object v13, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v13}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->keyOfConnectType()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_f

    const-string v4, "connectType"

    .line 334
    invoke-virtual {v8, v4, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 336
    :cond_f
    iget-object v4, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v4}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->keyOfCdnIpPort()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_10

    const-string v3, "cdnIpPort"

    .line 337
    invoke-virtual {v8, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 339
    :cond_10
    iget-object v3, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v3}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->keyOfFirstData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object/from16 v17, v6

    move/from16 v18, v7

    .line 340
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    move-object/from16 v19, v3

    const-string v3, "firstData"

    invoke-virtual {v9, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_5

    :cond_11
    move-object/from16 v19, v3

    move-object/from16 v17, v6

    move/from16 v18, v7

    .line 342
    :goto_5
    iget-object v3, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v3}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->keyOfSendBefore()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 343
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    move-object/from16 v20, v3

    const-string v3, "sendBefore"

    invoke-virtual {v9, v3, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    goto :goto_6

    :cond_12
    move-object/from16 v20, v3

    .line 345
    :goto_6
    iget-object v3, v0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNetworkAnalyzer:Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;

    invoke-interface {v3}, Lcom/taobao/phenix/compat/stat/NetworkAnalyzer;->keyOfResponseCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_13

    .line 346
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-double v6, v6

    const-string v15, "responseCode"

    invoke-virtual {v9, v15, v6, v7}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    :cond_13
    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v21

    goto :goto_7

    :cond_14
    move/from16 v18, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_7
    const/16 v6, 0xa

    .line 349
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v17, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v3, 0x2

    aput-object v13, v6, v3

    .line 350
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x3

    aput-object v3, v6, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x4

    aput-object v3, v6, v7

    const/4 v3, 0x5

    aput-object v19, v6, v3

    const/4 v3, 0x6

    aput-object v20, v6, v3

    const/4 v3, 0x7

    aput-object v4, v6, v3

    const/16 v3, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    const/16 v3, 0x9

    aput-object v5, v6, v3

    const-string v3, "network sub-stats: node=%s hit=%s type=%s connect=%d download=%d firstData=%s sendBefore=%s responseCode=%s size=%d, PATH=%s"

    .line 349
    invoke-static {v2, v3, v6}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/2addr v11, v12

    if-lez v11, :cond_15

    .line 353
    div-int v3, v14, v11

    int-to-double v3, v3

    const-string v6, "speed"

    invoke-virtual {v9, v6, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 355
    :cond_15
    invoke-static {v14}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->access$100(I)Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;

    move-result-object v11

    goto :goto_a

    :cond_16
    move/from16 v18, v7

    move-object/from16 v11, v16

    .line 319
    invoke-direct {v0, v9, v12, v11}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    const-string v3, "scaleTime"

    .line 320
    invoke-direct {v0, v9, v3, v11}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    goto :goto_9

    :cond_17
    move/from16 v18, v7

    move-object/from16 v11, v16

    .line 316
    invoke-direct {v0, v9, v12, v11}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    goto :goto_9

    :cond_18
    move/from16 v18, v7

    move-object/from16 v11, v16

    const-string v3, "localFile"

    .line 313
    invoke-direct {v0, v9, v3, v11}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->updateMeasureValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Ljava/lang/String;Ljava/util/Map;)I

    goto :goto_9

    :cond_19
    :goto_8
    move/from16 v18, v7

    :goto_9
    const/4 v11, 0x0

    :goto_a
    const-string v3, "ImageLib_Rx"

    const-string v4, "ImageFlow"

    .line 360
    invoke-static {v3, v4, v8, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    const/4 v3, 0x2

    .line 361
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const-string v4, "commit complete onSuccess, statistics=%s, path=%s"

    invoke-static {v2, v4, v3}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v18, :cond_1a

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getDiskCacheHitCount()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getDiskCacheMissCount()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getDiskCachePriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "DiskCacheHit"

    invoke-direct {v0, v5, v2, v3, v4}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->commitAlarm(Ljava/lang/String;IILjava/lang/String;)V

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getBitmapPoolHitCount()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/taobao/phenix/request/ImageStatistics;->getBitmapPoolMissCount()I

    move-result v3

    const-string v4, "BitmapPoolHit"

    invoke-direct {v0, v4, v2, v3, v10}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->commitAlarm(Ljava/lang/String;IILjava/lang/String;)V

    :cond_1a
    if-eqz v11, :cond_1b

    .line 370
    invoke-virtual {v0, v1, v11}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->onFail(Lcom/taobao/phenix/request/ImageStatistics;Ljava/lang/Throwable;)V

    :cond_1b
    return-void

    :cond_1c
    :goto_b
    const/4 v3, 0x1

    .line 239
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "skipped commit onSuccess, statistic=%s"

    invoke-static {v2, v1, v3}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected declared-synchronized registerAppMonitor()V
    .locals 13

    monitor-enter p0

    .line 132
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 133
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "FlowMonitor"

    const-string v1, "image flow register start"

    const/4 v2, 0x0

    .line 135
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    const-string v1, "domain"

    .line 138
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "error"

    .line 139
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "bizName"

    .line 140
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "format"

    .line 141
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "dataFrom"

    .line 142
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "scheduleFactor"

    .line 143
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "hitCdnCache"

    .line 144
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "connectType"

    .line 145
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "cdnIpPort"

    .line 146
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "windowName"

    .line 147
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "naviUrl"

    .line 148
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 151
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-string v5, "memoryLookup"

    const-wide/16 v9, 0x0

    .line 152
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-wide v11, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "cacheLookup"

    .line 153
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "localFile"

    .line 154
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "connect"

    .line 155
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "download"

    .line 156
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "decode"

    .line 157
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "scaleTime"

    .line 158
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "scheduleTime"

    .line 159
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "waitForMain"

    .line 160
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "totalTime"

    .line 161
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "size"

    .line 162
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "speed"

    .line 163
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "masterWaitSize"

    .line 164
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "networkWaitSize"

    .line 165
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "decodeWaitSize"

    .line 166
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "firstData"

    .line 167
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "sendBefore"

    .line 168
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v5, "responseCode"

    .line 169
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object v3, p0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->newMeasure2Set(Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    const-string v3, "ImageLib_Rx"

    const-string v4, "ImageFlow"

    .line 171
    invoke-static {v3, v4, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mRegistered:Z

    const-string v0, "FlowMonitor"

    const-string v1, "image flow register end"

    .line 173
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerErrorMonitor()V
    .locals 5

    monitor-enter p0

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mRegisteredException:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 178
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "FlowMonitor"

    const-string v1, "image error register start"

    const/4 v2, 0x0

    .line 180
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    const-string v1, "url"

    .line 183
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "windowName"

    .line 184
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "naviUrl"

    .line 185
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "bizName"

    .line 186
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "analysisErrorCode"

    .line 187
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "originErrorCode"

    .line 188
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "desc"

    .line 189
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "ImageLib_Rx"

    const-string v3, "ImageError"

    const/4 v4, 0x0

    .line 191
    invoke-static {v1, v3, v4, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mRegisteredException:Z

    const-string v0, "FlowMonitor"

    const-string v1, "image error register end"

    .line 193
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/phenix/common/UnitedLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setImageWarningSize(I)V
    .locals 2

    .line 127
    invoke-static {p1}, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor$ImageSizeWarningException;->access$002(I)I

    const/4 v0, 0x1

    .line 128
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FlowMonitor"

    const-string v1, "set image warning size=%d"

    invoke-static {p1, v1, v0}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setNavigationInfoObtainer(Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;)V
    .locals 2

    .line 117
    iput-object p1, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNavInfoObtainer:Lcom/taobao/phenix/compat/stat/NavigationInfoObtainer;

    const/4 v0, 0x1

    .line 118
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FlowMonitor"

    const-string v1, "set navigation info obtainer=%s"

    invoke-static {p1, v1, v0}, Lcom/taobao/phenix/common/UnitedLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setNonCriticalErrorReporter(Lcom/taobao/phenix/compat/stat/NonCriticalErrorReporter;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/taobao/phenix/compat/stat/TBImageFlowMonitor;->mNonCriticalErrorReporter:Lcom/taobao/phenix/compat/stat/NonCriticalErrorReporter;

    return-void
.end method
