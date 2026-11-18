.class public Landroid/taobao/windvane/monitor/AppMonitorUtil;
.super Ljava/lang/Object;
.source "AppMonitorUtil.java"


# static fields
.field public static final JS_ERROR_POINT:Ljava/lang/String; = "JavaScriptError"

.field public static final MONITOR_MATCH_URL_FAILED:Ljava/lang/String; = "urlMatchFailed"

.field private static final MONITOR_MODULE:Ljava/lang/String; = "WindVane"

.field private static final MONITOR_MODULE_ZCache:Ljava/lang/String; = "ZCache"

.field public static final MONITOR_POINT_CORE_INIT_TIME:Ljava/lang/String; = "CoreInitTime"

.field public static final MONITOR_POINT_CORE_TYPE_BY_PV:Ljava/lang/String; = "CoreTypeByPV"

.field public static final MONITOR_POINT_DIURNAL_OVERVIEW:Ljava/lang/String; = "DiurnalOverview"

.field public static final MONITOR_POINT_FSP_TIME:Ljava/lang/String; = "FSP"

.field public static final MONITOR_POINT_GPU_PROCESS_GONE_TYPE:Ljava/lang/String; = "GpuProcessGone"

.field private static final MONITOR_POINT_INSECURITY_HOST:Ljava/lang/String; = "insecurityHost"

.field private static final MONITOR_POINT_JS_BRIDGE_RETURN:Ljava/lang/String; = "JSBridgeReturn"

.field public static final MONITOR_POINT_MULTI_PROCESS:Ljava/lang/String; = "MultiProcess"

.field public static final MONITOR_POINT_MULTI_PROCESS_BY_PV:Ljava/lang/String; = "MultiProcessByPV"

.field private static final MONITOR_POINT_OFF_MONITOR:Ljava/lang/String; = "OffMonitor"

.field private static final MONITOR_POINT_PACKAGEAPP:Ljava/lang/String; = "PackageApp"

.field private static final MONITOR_POINT_PACKAGEAPP_UPDATE_START:Ljava/lang/String; = "PackageUpdateStart"

.field private static final MONITOR_POINT_PACKAGEAPP_VISIT:Ljava/lang/String; = "PackageAppVisit"

.field private static final MONITOR_POINT_PACKAGEAPP_VISIT_START:Ljava/lang/String; = "PackageVisitStart"

.field private static final MONITOR_POINT_PACKAGEQUEUE:Ljava/lang/String; = "PackageQueue"

.field private static final MONITOR_POINT_PACKAGE_CLEANUP:Ljava/lang/String; = "PackageCleanUp"

.field private static final MONITOR_POINT_PACKAGE_WARNING:Ljava/lang/String; = "PackageWarning"

.field private static final MONITOR_POINT_PAGE_EMPTY:Ljava/lang/String; = "PageEmpty"

.field public static final MONITOR_POINT_PARAM_PARSE_ERROR:Ljava/lang/String; = "ParamParseError"

.field private static final MONITOR_POINT_PERFORMANCE:Ljava/lang/String; = "H5"

.field private static final MONITOR_POINT_PERFORMANCE_2:Ljava/lang/String; = "H5_2"

.field private static final MONITOR_POINT_PERFORMANCE_3:Ljava/lang/String; = "H5_3"

.field private static final MONITOR_POINT_PERFORMANCE_4:Ljava/lang/String; = "H5_4"

.field private static final MONITOR_POINT_PERFORMANCE_5:Ljava/lang/String; = "H5_5"

.field private static final MONITOR_POINT_RESOURCE_SIZE:Ljava/lang/String; = "ResourceSize"

.field private static final MONITOR_POINT_SECURITY_WARNING:Ljava/lang/String; = "SecurityWarning"

.field private static final MONITOR_POINT_STATUS_CODE:Ljava/lang/String; = "StatusCode"

.field private static final MONITOR_POINT_UNZIP_ERROR:Ljava/lang/String; = "UnzipError"

.field private static final MONITOR_POINT_UPDATE_CONFIG_INFO:Ljava/lang/String; = "Config"

.field public static final MONITOR_POINT_URL_CONFIG_FILTER_TYPE:Ljava/lang/String; = "UrlConfigFilterType"

.field public static final MONITOR_POINT_URL_CONFIG_JS_API_TYPE:Ljava/lang/String; = "UrlConfigJsApiType"

.field private static final MONITOR_POINT_USE_WEBGL:Ljava/lang/String; = "UseWebGl"

.field private static final MONITOR_POINT_WEBVIEW_START:Ljava/lang/String; = "WebViewStart"

.field public static final MONITOR_POINT_WEBVIEW_WRAP_TYPE:Ljava/lang/String; = "WebViewWrapType"

.field public static final MONITOR_POINT_WEB_CORE_TYPE:Ljava/lang/String; = "WebViewCoreType"

.field public static final MONITOR_POINT_WEB_CORE_TYPE_BY_PV:Ljava/lang/String; = "WebViewCoreTypeByPV"

.field private static final MONITOR_POINT_WEB_PERFORMANCE_CHECK:Ljava/lang/String; = "WebPerformanceCheck"

.field private static final MONITOR_POINT_WRONG_FOLDER_INDEX:Ljava/lang/String; = "WrongFolderIndex"

.field private static final MONITOR_POINT_WVUCWEBVIEW:Ljava/lang/String; = "WVUcwebview"

.field public static final MONITOR_POINT_WV_INIT_TIME:Ljava/lang/String; = "WVInitTime"

.field public static final MONITOR_POINT_ZCACHE_DOWNLOAD_TIME:Ljava/lang/String; = "ZCacheDownLoadTime"

.field public static final NATIVE_ERROR_POINT:Ljava/lang/String; = "NativeError"

.field public static OFF:Z = false

.field private static final TAG:Ljava/lang/String; = "AppMonitorUtil"

.field private static isAppMonitorEnabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commitConifgUpdateError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 405
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindVane"

    const-string v1, "Config"

    invoke-static {v0, v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitConifgUpdateInfo(Ljava/lang/String;IJII)V
    .locals 2

    .line 384
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "name"

    .line 389
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "from"

    .line 390
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "isSuccess"

    .line 391
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 393
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo p1, "updateTime"

    long-to-double p2, p2

    .line 394
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p1, "updateCount"

    int-to-double p2, p5

    .line 395
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "Config"

    .line 398
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor exception"

    .line 400
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitConifgUpdateSuccess(Ljava/lang/String;)V
    .locals 2

    .line 411
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "Config"

    .line 413
    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitCoreInitTime(JLjava/lang/String;)V
    .locals 2

    .line 878
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "fromType"

    .line 883
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 884
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    const-string v1, "initTime"

    long-to-double p0, p0

    .line 885
    invoke-virtual {p2, v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "WindVane"

    const-string p1, "CoreInitTime"

    .line 886
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitCoreInitTime exception"

    .line 888
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitCoreTypeByPV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 893
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 897
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "fromType"

    .line 898
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "coreType"

    .line 899
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "CoreTypeByPV"

    .line 900
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitCoreTypeByPV exception"

    .line 902
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitEmptyPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 465
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Webview commitEmptyPage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppMonitorUtil"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "WindVane"

    const-string v1, "PageEmpty"

    const-string v2, "101"

    .line 468
    invoke-static {v0, v1, p0, v2, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitFSPInfo(Ljava/lang/String;J)V
    .locals 3

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "URL"

    .line 970
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 971
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo v1, "time"

    long-to-double p1, p1

    .line 972
    invoke-virtual {p0, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "FSP"

    .line 973
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor paramParseError exception"

    .line 975
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitFail(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 372
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindVane"

    invoke-static {v0, p0, p3, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitInSecurityHost(Ljava/lang/String;)V
    .locals 3

    .line 453
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "insecurityHost"

    const-string v2, "101"

    .line 455
    invoke-static {v0, v1, v2, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitJsBridgeReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 692
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "name"

    .line 697
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "ret"

    .line 698
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "message"

    .line 699
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "url"

    .line 700
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "JSBridgeReturn"

    .line 702
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitJsBridgeReturn exception"

    .line 704
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitOffMonitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 459
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "OffMonitor"

    .line 461
    invoke-static {v0, v1, p1, p2, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppUpdateError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 417
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "PackageApp"

    .line 419
    invoke-static {v0, v1, p2, p0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppUpdateInfo(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Ljava/lang/String;JJJJ)V
    .locals 5

    const-string v0, "AppMonitorUtil"

    .line 472
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    const-string v2, "appName"

    .line 477
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v2, "version"

    .line 478
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v2, "seq"

    .line 479
    iget-wide v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "online"

    .line 480
    invoke-virtual {v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "networkSupport"

    .line 481
    invoke-virtual {v1, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 483
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo p2, "updateTime"

    long-to-double p3, p3

    .line 484
    invoke-virtual {p0, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p2, "downloadTime"

    long-to-double p3, p5

    .line 485
    invoke-virtual {p0, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p2, "publishTime"

    long-to-double p3, p7

    .line 486
    invoke-virtual {p0, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p2, "notificationTime"

    long-to-double p3, p9

    .line 487
    invoke-virtual {p0, p2, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p2, "WindVane"

    const-string p3, "PackageApp"

    .line 490
    invoke-static {p2, p3, v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 492
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "app publishTime : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " online : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitor exception"

    .line 494
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppUpdateSuccess(Ljava/lang/String;)V
    .locals 2

    .line 429
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "PackageApp"

    .line 431
    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppVisitError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 435
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "PackageAppVisit"

    .line 437
    invoke-static {v0, v1, p0, p2, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageAppWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 441
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "PackageWarning"

    const-string v2, "1"

    .line 443
    invoke-static {v0, v1, p0, v2, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageClearUpInfo(JIIIFIIFI)V
    .locals 2

    .line 666
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "cleanCause"

    .line 671
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p9

    invoke-virtual {v0, v1, p9}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 673
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p9

    const-string v1, "beforeDelSpace"

    long-to-double p0, p0

    .line 674
    invoke-virtual {p9, v1, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "expectedNum"

    int-to-double p1, p2

    .line 675
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "installedNum"

    int-to-double p1, p3

    .line 676
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p0, "willDeleteCount"

    int-to-double p1, p4

    .line 677
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "customRadio"

    float-to-double p1, p5

    .line 678
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "noCacheCount"

    int-to-double p1, p6

    .line 679
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "normalCount"

    int-to-double p1, p7

    .line 680
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "noCacheRatio"

    float-to-double p1, p8

    .line 681
    invoke-virtual {p9, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "WindVane"

    const-string p1, "PackageCleanUp"

    .line 683
    invoke-static {p0, p1, v0, p9}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageClearUpInfo exception"

    .line 687
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageQueueInfo(Ljava/lang/String;JJ)V
    .locals 2

    .line 522
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 527
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "isInitialUpdate"

    .line 528
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 531
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo v1, "updateCount"

    long-to-double p1, p1

    .line 532
    invoke-virtual {p0, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p1, "successCount"

    long-to-double p2, p3

    .line 533
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "PackageQueue"

    .line 535
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageQueueInfo exception"

    .line 539
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static commitPackageUpdateStartInfo(JJ)V
    .locals 3

    .line 597
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 601
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 603
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    const-string/jumbo v2, "t_startTime"

    long-to-double p0, p0

    .line 604
    invoke-virtual {v1, v2, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p0, "t_endTime"

    long-to-double p1, p2

    .line 605
    invoke-virtual {v1, p0, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "WindVane"

    const-string p1, "PackageUpdateStart"

    .line 608
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageUpdateStartInfo exception"

    .line 612
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageVisitInfo(Ljava/lang/String;Ljava/lang/String;JJJJJ)V
    .locals 0

    .line 544
    sget-object p10, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget p10, p10, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz p10, :cond_1

    sget-boolean p10, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez p10, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p10

    const-string p11, "pkgName"

    .line 549
    invoke-virtual {p10, p11, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "hasVerifyTime"

    .line 550
    invoke-virtual {p10, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 552
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo p1, "time"

    long-to-double p2, p2

    .line 553
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "matchTime"

    long-to-double p2, p4

    .line 554
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p1, "readTime"

    long-to-double p2, p6

    .line 555
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p1, "verifyTime"

    long-to-double p2, p8

    .line 556
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "PackageAppVisit"

    .line 559
    invoke-static {p1, p2, p10, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageVisitInfo exception"

    .line 562
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageVisitStartInfo(Ljava/lang/String;J)V
    .locals 2

    .line 577
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "pkgName"

    .line 582
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 584
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo v1, "time"

    long-to-double p1, p1

    .line 585
    invoke-virtual {p0, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "PackageVisitStart"

    .line 588
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageVisitStartInfo exception"

    .line 592
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPackageVisitSuccess(Ljava/lang/String;J)V
    .locals 3

    .line 567
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v0, "WindVane"

    const-string v1, "PackageAppVisit"

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageVisitSuccess exception"

    .line 572
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitParamParseError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 942
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "pageUrl"

    .line 948
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "crashInfo"

    .line 949
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "params"

    .line 950
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "invokeMethod"

    .line 951
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "ParamParseError"

    .line 952
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor paramParseError exception"

    .line 954
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitPerformanceInfo(Landroid/taobao/windvane/monitor/WVMonitorData;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "les"

    const-string v2, "lee"

    const-string v3, "dns"

    const-string v4, "dl"

    const-string v5, "dcl"

    const-string v6, "dc"

    const-string v7, "\""

    const-string v8, "c"

    const-string v9, "AppMonitorUtil"

    .line 709
    sget-object v10, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v10, v10, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v10, :cond_b

    sget-boolean v10, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v10, :cond_0

    goto/16 :goto_4

    .line 713
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v10

    const-string/jumbo v11, "url"

    .line 714
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->url:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v11, "via"

    .line 715
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget-object v12, v12, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->via:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v11, "pkgName"

    .line 716
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v12, v12, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v11, "pkgVersion"

    .line 717
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v12, v12, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->packageAppVersion:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v11, "pkgSeq"

    .line 718
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-object v12, v12, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->appSeq:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v11, "fromType"

    .line 719
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v12, v12, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v11, "hasInit"

    .line 720
    iget-boolean v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->isInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v13, "1"

    const-string v14, "0"

    if-eqz v12, :cond_1

    move-object v12, v13

    goto :goto_0

    :cond_1
    move-object v12, v14

    :goto_0
    :try_start_1
    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v11, "isFinished"

    .line 721
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v12, v12, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->finish:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v11, "statusCode"

    .line 722
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->args:Landroid/taobao/windvane/monitor/WVMonitorData$extra;

    iget v12, v12, Landroid/taobao/windvane/monitor/WVMonitorData$extra;->statusCode:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo v11, "verifyError"

    .line 723
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v12, v12, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyError:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v11, "protocolType"

    .line 724
    iget-object v12, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->protocolType:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string v11, "inMainProcess"

    .line 725
    sget-object v12, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v12}, Landroid/taobao/windvane/util/CommonUtils;->isMainProcess(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    move-object v13, v14

    :goto_1
    invoke-virtual {v10, v11, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 727
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v11

    const-string/jumbo v12, "verifyResTime"

    .line 728
    iget-object v13, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v13, v13, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyResTime:J

    long-to-double v13, v13

    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v12, "verifyTime"

    .line 729
    iget-object v13, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v13, v13, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyTime:J

    long-to-double v13, v13

    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v12, "verifyCacheSize"

    .line 730
    iget-object v13, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v13, v13, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->verifyCacheSize:I

    int-to-double v13, v13

    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v12, "allVerifyTime"

    .line 731
    iget-object v13, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v13, v13, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->allVerifyTime:J

    long-to-double v13, v13

    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v12, "initTime"

    .line 732
    iget-wide v13, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->init:J

    long-to-double v13, v13

    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v12, "tcp"

    const-wide/16 v13, 0x0

    .line 733
    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v12, "ssl"

    .line 734
    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v12, "firstByte"

    .line 735
    iget-object v13, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v13, v13, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->firstByteTime:J

    long-to-double v13, v13

    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v12, "domLoad"

    .line 736
    iget-object v13, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v13, v13, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onDomLoad:J

    long-to-double v13, v13

    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string v12, "pageLoad"

    .line 737
    iget-object v13, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v13, v13, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    long-to-double v13, v13

    invoke-virtual {v11, v12, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v13, 0x1

    .line 740
    :try_start_2
    iget-object v14, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->performanceInfo:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 741
    iget-object v14, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->performanceInfo:Ljava/lang/String;

    .line 742
    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v14, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 743
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v7

    .line 744
    iget-object v14, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->performanceInfo:Ljava/lang/String;

    sub-int/2addr v7, v13

    invoke-virtual {v14, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 746
    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    const-string v15, "\\"

    const-string v12, ""

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v12, v7

    goto :goto_2

    :catch_0
    :cond_4
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_5

    const/4 v7, 0x0

    .line 751
    :try_start_3
    invoke-virtual {v12, v8, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    int-to-double v14, v14

    invoke-virtual {v11, v8, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 752
    invoke-virtual {v12, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    int-to-double v14, v8

    invoke-virtual {v11, v6, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 753
    invoke-virtual {v12, v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    int-to-double v14, v6

    invoke-virtual {v11, v5, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 754
    invoke-virtual {v12, v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v11, v4, v5, v6}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 755
    invoke-virtual {v12, v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v11, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 756
    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    int-to-double v3, v3

    invoke-virtual {v11, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 757
    invoke-virtual {v12, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v11, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "req"

    const-string/jumbo v2, "req"

    .line 758
    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v11, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "rpe"

    const-string/jumbo v2, "rpe"

    .line 759
    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v11, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "rps"

    const-string/jumbo v2, "rps"

    .line 760
    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v11, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo v1, "scs"

    const-string/jumbo v2, "scs"

    .line 761
    invoke-virtual {v12, v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v11, v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 764
    :cond_5
    iget v1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->wvAppMonitor:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v2, "H5"

    if-eq v1, v13, :cond_a

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x3

    if-eq v1, v3, :cond_8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_7

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    goto :goto_3

    :cond_6
    :try_start_4
    const-string v2, "H5_5"

    goto :goto_3

    :cond_7
    const-string v2, "H5_4"

    goto :goto_3

    :cond_8
    const-string v2, "H5_3"

    goto :goto_3

    :cond_9
    const-string v2, "H5_2"

    :cond_a
    :goto_3
    const-string v1, "WindVane"

    .line 789
    invoke-static {v1, v2, v10, v11}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 791
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_b

    iget-object v1, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    if-eqz v1, :cond_b

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PERFORMANCE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": pageLoad : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget-wide v2, v2, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->onLoad:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " fromType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/taobao/windvane/monitor/WVMonitorData;->stat:Landroid/taobao/windvane/monitor/WVMonitorData$stat;

    iget v0, v0, Landroid/taobao/windvane/monitor/WVMonitorData$stat;->fromType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    const-string v0, "AppMonitor exception"

    .line 795
    invoke-static {v9, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method

.method public static commitRenderType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 921
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 925
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 926
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "r_type"

    .line 927
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "process_mode"

    .line 928
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "background"

    .line 929
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "MultiProcess"

    .line 930
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitRenderTypeByPV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 815
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 819
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "web_init_mode"

    .line 820
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "web_succ_mode"

    .line 821
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "web_succ_reason"

    .line 822
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "gpu_init_mode"

    .line 823
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "gpu_succ_mode"

    .line 824
    invoke-virtual {v0, p0, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "gpu_succ_reason"

    .line 825
    invoke-virtual {v0, p0, p5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "MultiProcessByPV"

    .line 826
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitResourceSize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 637
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "ResourceSize"

    const-string v2, "1"

    .line 639
    invoke-static {v0, v1, p0, v2, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitSecurityWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 447
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "SecurityWarning"

    const-string v2, "101"

    .line 449
    invoke-static {v0, v1, p1, v2, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitStartTimeInfo(Ljava/lang/String;J)V
    .locals 6

    const-string v0, "AppMonitorUtil"

    .line 499
    sget-object v1, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v1, v1, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v1, :cond_2

    sget-boolean v1, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 504
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "url"

    .line 505
    invoke-static {p0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 508
    :cond_1
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    const-string/jumbo v3, "time"

    long-to-double v4, p1

    .line 509
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Webview start after : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms, url : "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/taobao/windvane/util/WVUrlUtil;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "WindVane"

    const-string p1, "WebViewStart"

    .line 513
    invoke-static {p0, p1, v1, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitor commitStartTimeInfo exception"

    .line 517
    invoke-static {v0, p0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static commitStatusCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 617
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 622
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "isHTML"

    .line 623
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "statusCode"

    .line 624
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "referrer"

    .line 625
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "bizCode"

    .line 626
    invoke-virtual {v0, p0, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string p1, "StatusCode"

    .line 629
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p2

    .line 628
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitStatusCode exception"

    .line 631
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 378
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    .line 380
    invoke-static {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitUCWebviewError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 423
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WindVane"

    const-string v1, "WVUcwebview"

    .line 425
    invoke-static {v0, v1, p2, p0, p1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitUseWebgl(Ljava/lang/String;)V
    .locals 3

    .line 907
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 911
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 912
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "url"

    .line 914
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string v1, "UseWebGl"

    .line 915
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public static commitWVInitTime(JJ)V
    .locals 2

    .line 800
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 804
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-string/jumbo v1, "tbInitTime"

    long-to-double p2, p2

    .line 805
    invoke-virtual {v0, v1, p2, p3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p2, "wvInitTime"

    long-to-double p0, p0

    .line 806
    invoke-virtual {v0, p2, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p0, "WindVane"

    const-string p1, "WVInitTime"

    .line 807
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p2

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitWVInitTime exception"

    .line 809
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitWVWrapType(Ljava/lang/String;)V
    .locals 3

    .line 865
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 869
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "type"

    .line 870
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "WindVane"

    const-string v1, "WebViewWrapType"

    .line 871
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string v0, "AppMonitor commitWVWrapType exception"

    .line 873
    invoke-static {p0, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitWebPerfCheckInfo(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 643
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 647
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 648
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "version"

    .line 649
    invoke-virtual {v0, p0, p3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "bizcode"

    .line 650
    invoke-virtual {v0, p0, p4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string/jumbo p0, "result"

    .line 651
    invoke-virtual {v0, p0, p5}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 653
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object p0

    const-string/jumbo p3, "score"

    long-to-double p1, p1

    .line 654
    invoke-virtual {p0, p3, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string p1, "WindVane"

    const-string p2, "WebPerformanceCheck"

    .line 657
    invoke-static {p1, p2, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitPackageUpdateStartInfo exception"

    .line 661
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitZCacheDiurnalOverview(Ljava/lang/String;)V
    .locals 3

    .line 832
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_1

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 836
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    const-string v1, "installedApps"

    .line 837
    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "ZCache"

    const-string v1, "DiurnalOverview"

    .line 838
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string v0, "AppMonitor commitZCacheDiurnalOverview exception"

    .line 840
    invoke-static {p0, v0}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static commitZCacheDownLoadTime(Ljava/lang/String;JJJLjava/lang/String;Z)V
    .locals 2

    .line 846
    sget-object v0, Landroid/taobao/windvane/config/WVCommonConfig;->commonConfig:Landroid/taobao/windvane/config/WVCommonConfigData;

    iget v0, v0, Landroid/taobao/windvane/config/WVCommonConfigData;->monitorStatus:I

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 850
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v0

    const-string/jumbo v1, "zcacheDownLoadTime"

    long-to-double p3, p3

    .line 851
    invoke-virtual {v0, v1, p3, p4}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p3, "zcacheTaskTime"

    long-to-double p4, p5

    .line 852
    invoke-virtual {v0, p3, p4, p5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    const-string/jumbo p3, "waitTime"

    long-to-double p1, p1

    .line 853
    invoke-virtual {v0, p3, p1, p2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 854
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object p1

    const-string p2, "appName"

    .line 855
    invoke-virtual {p1, p2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "msg"

    .line 856
    invoke-virtual {p1, p0, p7}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "isSuccess"

    if-eqz p8, :cond_1

    const-string/jumbo p2, "true"

    goto :goto_0

    :cond_1
    const-string p2, "false"

    .line 857
    :goto_0
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    const-string p0, "ZCache"

    const-string p2, "ZCacheDownLoadTime"

    .line 858
    invoke-static {p0, p2, p1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "AppMonitorUtil"

    const-string p1, "AppMonitor commitZCacheDownLoadTime exception"

    .line 860
    invoke-static {p0, p1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;
    .locals 1

    .line 94
    new-instance v0, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/mtl/appmonitor/model/Measure;->setRange(Ljava/lang/Double;Ljava/lang/Double;)V

    return-object v0
.end method

.method public static init()V
    .locals 16

    const-string v0, "name"

    const-string/jumbo v1, "version"

    const-string/jumbo v2, "verifyTime"

    const-string/jumbo v3, "updateCount"

    const-string v4, "fromType"

    const-string/jumbo v5, "time"

    const-string v6, "pkgName"

    const-string/jumbo v7, "url"

    const-string v8, "WindVane"

    const/4 v9, 0x0

    .line 101
    :try_start_0
    sput-boolean v9, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z

    .line 104
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    const-string v10, "isInitialUpdate"

    .line 106
    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 109
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    const-wide v11, 0x408c200000000000L    # 900.0

    const-wide v13, 0x3fb999999999999aL    # 0.1

    .line 111
    invoke-static {v3, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v15, "successCount"

    .line 112
    invoke-static {v15, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "PackageQueue"

    .line 114
    invoke-static {v8, v11, v10, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 117
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    .line 119
    invoke-virtual {v9, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v10, "hasVerifyTime"

    .line 120
    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 123
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    const-wide v11, 0x40ed4c0000000000L    # 60000.0

    const-wide/16 v13, 0x0

    .line 125
    invoke-static {v5, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v15, "matchTime"

    .line 126
    invoke-static {v15, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v15, "readTime"

    .line 127
    invoke-static {v15, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 128
    invoke-static {v2, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v15, "PackageAppVisit"

    .line 130
    invoke-static {v8, v15, v10, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 134
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    .line 136
    invoke-virtual {v9, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 137
    invoke-virtual {v9, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v10, "bizcode"

    .line 138
    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v10, "result"

    .line 139
    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 142
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    const-string/jumbo v15, "score"

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    .line 144
    invoke-static {v15, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "WebPerformanceCheck"

    .line 146
    invoke-static {v8, v11, v10, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 149
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    .line 151
    invoke-virtual {v9, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 154
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    const-wide v11, 0x4184997000000000L    # 4.32E7

    .line 156
    invoke-static {v5, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v15, "PackageVisitStart"

    .line 157
    invoke-static {v8, v15, v10, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 160
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    .line 162
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    const-string/jumbo v15, "t_startTime"

    .line 164
    invoke-static {v15, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v15, "t_endTime"

    .line 165
    invoke-static {v15, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "PackageUpdateStart"

    .line 166
    invoke-static {v8, v11, v10, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 169
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    const-string v10, "cleanCause"

    .line 171
    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 174
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    const-string v11, "beforeDelSpace"

    .line 176
    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "expectedNum"

    .line 177
    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "installedNum"

    .line 178
    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v11, "willDeleteCount"

    .line 179
    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "customRadio"

    .line 180
    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "noCacheCount"

    .line 181
    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "normalCount"

    .line 182
    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "noCacheRatio"

    .line 183
    invoke-virtual {v10, v11}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v11, "PackageCleanUp"

    .line 185
    invoke-static {v8, v11, v10, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 188
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v9

    .line 190
    invoke-virtual {v9, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 193
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    const-wide v11, 0x413b774000000000L    # 1800000.0

    .line 195
    invoke-static {v5, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v5, "WebViewStart"

    .line 197
    invoke-static {v8, v5, v10, v9}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 201
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v5

    .line 203
    invoke-virtual {v5, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v9, "from"

    .line 204
    invoke-virtual {v5, v9}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v9, "isSuccess"

    .line 205
    invoke-virtual {v5, v9}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 208
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v9

    const-string/jumbo v10, "updateTime"

    const-wide v11, 0x41224f8000000000L    # 600000.0

    .line 210
    invoke-static {v10, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-wide v11, 0x408f400000000000L    # 1000.0

    .line 211
    invoke-static {v3, v13, v14, v11, v12}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v3, "Config"

    .line 213
    invoke-static {v8, v3, v9, v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 216
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 218
    invoke-virtual {v3, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v5, "isHTML"

    .line 219
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v5, "statusCode"

    .line 220
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v5, "referrer"

    .line 221
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v5, "bizCode"

    .line 222
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 225
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    const-string v9, "StatusCode"

    .line 227
    invoke-static {v8, v9, v5, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 230
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    const-string v5, "appName"

    .line 232
    invoke-virtual {v3, v5}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 233
    invoke-virtual {v3, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v1, "seq"

    .line 234
    invoke-virtual {v3, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "online"

    .line 235
    invoke-virtual {v3, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "networkSupport"

    .line 236
    invoke-virtual {v3, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 239
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-string/jumbo v5, "updateTime"

    const-wide v9, 0x41224f8000000000L    # 600000.0

    .line 241
    invoke-static {v5, v13, v14, v9, v10}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v5, "downloadTime"

    .line 242
    invoke-static {v5, v13, v14, v9, v10}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v5, "publishTime"

    const-wide v9, 0x41c2064200000000L    # 6.048E8

    .line 243
    invoke-static {v5, v13, v14, v9, v10}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v5, "notificationTime"

    const-wide v9, 0x41c2064200000000L    # 6.048E8

    .line 244
    invoke-static {v5, v13, v14, v9, v10}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v5, "PackageApp"

    .line 245
    invoke-static {v8, v5, v1, v3}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 247
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v0, "ret"

    .line 249
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v0, "msg"

    .line 250
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 251
    invoke-virtual {v1, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v0, "JSBridgeReturn"

    .line 252
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    invoke-static {v8, v0, v3, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 255
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string/jumbo v1, "tbInitTime"

    .line 256
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v1, "wvInitTime"

    .line 257
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v1, "WVInitTime"

    .line 258
    invoke-static {v8, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V

    .line 260
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    const-string v1, "installedApps"

    .line 261
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "ZCache"

    const-string v3, "DiurnalOverview"

    .line 262
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    invoke-static {v1, v3, v5, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 264
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v0

    const-string/jumbo v1, "zcacheDownLoadTime"

    .line 265
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v1, "zcacheTaskTime"

    .line 266
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v1, "waitTime"

    .line 267
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 269
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string v3, "appName"

    .line 270
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "msg"

    .line 271
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "isSuccess"

    .line 272
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "ZCache"

    const-string v5, "ZCacheDownLoadTime"

    .line 273
    invoke-static {v3, v5, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 275
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    const-string/jumbo v1, "type"

    .line 276
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "WebViewWrapType"

    .line 277
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    invoke-static {v8, v1, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 279
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 281
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-string v3, "initTime"

    .line 282
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v3, "CoreInitTime"

    .line 283
    invoke-static {v8, v3, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 285
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 286
    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "coreType"

    .line 287
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "CoreTypeByPV"

    .line 288
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    invoke-static {v8, v1, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 290
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v1, "r_type"

    .line 292
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "process_mode"

    .line 293
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "background"

    .line 294
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "MultiProcess"

    .line 295
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    invoke-static {v8, v1, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 297
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string v3, "pageUrl"

    .line 299
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "crashInfo"

    .line 300
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "params"

    .line 301
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "invokeMethod"

    .line 302
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "ParamParseError"

    .line 303
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    invoke-static {v8, v3, v5, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 305
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    .line 306
    invoke-virtual {v1, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "UseWebGl"

    .line 307
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v5

    invoke-static {v8, v3, v5, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 310
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v1

    const-string/jumbo v3, "web_init_mode"

    .line 311
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "web_succ_mode"

    .line 312
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v3, "web_succ_reason"

    .line 313
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "gpu_succ_mode"

    .line 314
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "gpu_succ_mode"

    .line 315
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v3, "gpu_succ_reason"

    .line 316
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "MultiProcessByPV"

    .line 317
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    invoke-static {v8, v1, v3, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 320
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 322
    invoke-virtual {v0, v7}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v1, "via"

    .line 323
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 324
    invoke-virtual {v0, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "pkgVersion"

    .line 325
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "pkgSeq"

    .line 326
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 327
    invoke-virtual {v0, v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "protocolType"

    .line 328
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "hasInit"

    .line 329
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "isFinished"

    .line 330
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v1, "statusCode"

    .line 331
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string/jumbo v1, "verifyError"

    .line 332
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    const-string v1, "inMainProcess"

    .line 333
    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 336
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    const-string/jumbo v3, "verifyResTime"

    const-wide v4, 0x41224f8000000000L    # 600000.0

    .line 338
    invoke-static {v3, v13, v14, v4, v5}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 339
    invoke-static {v2, v13, v14, v4, v5}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "verifyCacheSize"

    .line 340
    invoke-static {v2, v13, v14, v4, v5}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "allVerifyTime"

    .line 341
    invoke-static {v2, v13, v14, v4, v5}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "initTime"

    const-wide v3, 0x40ed4c0000000000L    # 60000.0

    .line 342
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "tcp"

    const-wide v3, 0x41224f8000000000L    # 600000.0

    .line 343
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "ssl"

    .line 344
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "firstByte"

    .line 345
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "domLoad"

    .line 346
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "pageLoad"

    .line 347
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "c"

    .line 348
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "dc"

    .line 349
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "dcl"

    .line 350
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "dl"

    .line 351
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "dns"

    .line 352
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "lee"

    .line 353
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "les"

    .line 354
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "req"

    .line 355
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "rpe"

    .line 356
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "rps"

    .line 357
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string/jumbo v2, "scs"

    .line 358
    invoke-static {v2, v13, v14, v3, v4}, Landroid/taobao/windvane/monitor/AppMonitorUtil;->createMeasuerWithRange(Ljava/lang/String;DD)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    const-string v2, "H5"

    .line 360
    invoke-static {v8, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string v2, "H5_2"

    .line 361
    invoke-static {v8, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string v2, "H5_3"

    .line 362
    invoke-static {v8, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string v2, "H5_4"

    .line 363
    invoke-static {v8, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const-string v2, "H5_5"

    .line 364
    invoke-static {v8, v2, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    const/4 v0, 0x1

    .line 365
    sput-boolean v0, Landroid/taobao/windvane/monitor/AppMonitorUtil;->isAppMonitorEnabled:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AppMonitorUtil"

    const-string v1, "AppMonitor not found"

    .line 367
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
