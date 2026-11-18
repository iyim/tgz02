.class public Landroid/taobao/windvane/extra/performance/WVH5PPManager;
.super Ljava/lang/Object;
.source "WVH5PPManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5PP"

.field public static final WV_H5PP_ZCache_State_Hit:I = 0x2

.field public static final WV_H5PP_ZCache_State_NotHit:I = 0x1

.field public static final WV_H5PP_ZCache_State_NotUse:I

.field private static identify:I


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private h5_PP_T1:J

.field private h5_PP_T1_uptime:J

.field private h5_PP_TTI:J

.field private h5_PP_initEnd:J

.field private h5_PP_initEnd_uptime:J

.field private h5_PP_initStart:J

.field private h5_PP_initStart_uptime:J

.field private h5_PP_loadRequest:J

.field private h5_PP_loadRequest_uptime:J

.field private h5_PP_startLoad:J

.field private h5_PP_startLoad_uptime:J

.field private htmlUrl:Ljava/lang/String;

.field private htmlZCacheState:I

.field private pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

.field private webView:Landroid/taobao/windvane/webview/IWVWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/taobao/windvane/webview/IWVWebView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/extra/performance/WVH5PPManager;)Landroid/taobao/windvane/extra/performance/WVPagePerformance;
    .locals 0

    .line 29
    iget-object p0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    return-object p0
.end method

.method private checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 5

    .line 367
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 368
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/taobao/monitor/procedure/IProcedure;->stage(Ljava/lang/String;J)Lcom/taobao/monitor/procedure/IProcedure;

    goto :goto_0

    .line 370
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "stage="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " time="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "H5PP"

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private takeW3CPP()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x7
    .end annotation

    .line 212
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->webView:Landroid/taobao/windvane/webview/IWVWebView;

    new-instance v1, Landroid/taobao/windvane/extra/performance/WVH5PPManager$1;

    invoke-direct {v1, p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager$1;-><init>(Landroid/taobao/windvane/extra/performance/WVH5PPManager;)V

    const-string v2, "(function(performance){var timing=performance&&performance.timing;return timing&&JSON.stringify({ns:timing.navigationStart,fs:timing.fetchStart,re:timing.responseEnd,ds:timing.domContentLoadedEventStart,ls:timing.loadEventStart,le:timing.loadEventEnd})})(window.performance)"

    invoke-interface {v0, v2, v1}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method


# virtual methods
.method public jsCodeForUserPP()Ljava/lang/String;
    .locals 1

    const-string v0, "javascript:(function(){var observer=new PerformanceObserver(function(list,obj){for(var entry of list.getEntries()){if(entry.entryType==\'paint\'&&entry.name==\'first-paint\'){console.log(\'hybrid://WVPerformance:FP/receiveFPTime?{\"time\":\'+entry.startTime+\'}\')}if(entry.entryType==\'longtask\'){console.log(\'hybrid://WVPerformance:TTI/receiveTTITime?{\"time\":\'+(entry.startTime+entry.duration)+\'}\')}}});observer.observe({entryTypes:[\'longtask\',\'paint\']})})()"

    return-object v0
.end method

.method public pageDidFailLoadWithError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 248
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorCode:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public pageDidFinishIntercept()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public pageDidFinishLoad(Ljava/lang/String;)V
    .locals 3

    .line 154
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadInfo()V

    .line 156
    new-instance v0, Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-direct {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    .line 158
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_startLoad:J

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_startLoad(J)V

    .line 159
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_startLoad_uptime:J

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_startLoad_uptime(J)V

    .line 160
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_finishLoad(J)V

    .line 161
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_finishLoad_uptime(J)V

    .line 162
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0, p1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setUrl(Ljava/lang/String;)V

    .line 163
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_T1:J

    invoke-virtual {p1, v0, v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_T1(J)V

    .line 164
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_T1_uptime:J

    invoke-virtual {p1, v0, v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_T1_uptime(J)V

    .line 165
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_errorCode(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_errorMessage(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->takeW3CPP()V

    .line 172
    iget-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_isFinished(Z)V

    .line 174
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadToNativeApm()V

    const/4 p1, 0x0

    .line 176
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorCode:Ljava/lang/String;

    .line 177
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public pageDidLoadRequest()V
    .locals 2

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest:J

    .line 128
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest_uptime:J

    return-void
.end method

.method public pageDidStartIntercept()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public pageDidStartLoad()V
    .locals 3

    .line 142
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-eqz v0, :cond_0

    .line 143
    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_TTI:J

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_TTI(J)V

    const-wide/16 v0, 0x0

    .line 145
    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_TTI:J

    .line 147
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_startLoad:J

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_startLoad_uptime:J

    return-void
.end method

.method public receiveFPTime(J)V
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_FP(J)V

    return-void
.end method

.method public receiveHtmlUrl(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlUrl:Ljava/lang/String;

    return-void
.end method

.method public receiveHtmlZCacheState(ILjava/lang/String;)V
    .locals 1

    .line 100
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 104
    iput p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlZCacheState:I

    :cond_1
    return-void
.end method

.method public receiveTTITime(J)V
    .locals 5

    .line 93
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_TTI:J

    sub-long v0, p1, v0

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 94
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_TTI:J

    :cond_0
    return-void
.end method

.method public recordFSP(J)V
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_FSP(J)V

    .line 187
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_FSP_uptime(J)V

    return-void
.end method

.method public recordUCT1(J)V
    .locals 0

    .line 193
    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_T1:J

    .line 194
    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_T1_uptime:J

    return-void
.end method

.method public recordUCT2(J)V
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_T2(J)V

    .line 205
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-static {p1, p2}, Landroid/taobao/windvane/utils/TimeUtils;->generateUptimeFromCurrentTime(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->setH5_PP_T2_uptime(J)V

    return-void
.end method

.method public uploadInfo()V
    .locals 4

    .line 255
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5PP()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 265
    :cond_1
    invoke-static {}, Landroid/taobao/windvane/WVPerformanceManager;->getInstance()Landroid/taobao/windvane/WVPerformanceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceManager;->getConfig()Landroid/taobao/windvane/WVPerformanceConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/WVPerformanceConfig;->isOpenH5_2()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 270
    :cond_2
    new-instance v0, Landroid/taobao/windvane/extra/performance/WVAPMManager;

    const-string v1, "WindVane.H5"

    invoke-direct {v0, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;-><init>(Ljava/lang/String;)V

    .line 272
    sget v1, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->identify:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->identify:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStart(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "URL"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v1}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "process"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_isFinished()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isFinished"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorMessage"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    iget v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlZCacheState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htmlZCacheState"

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 281
    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart:J

    const-string v3, "initStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 282
    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd:J

    const-string v3, "initEnd"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 283
    iget-wide v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest:J

    const-string v3, "loadRequest"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 284
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_startLoad()J

    move-result-wide v1

    const-string/jumbo v3, "startLoad"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 285
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart()J

    move-result-wide v1

    const-string v3, "navigationStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 286
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_fetchStart()J

    move-result-wide v1

    const-string v3, "fetchStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 287
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_responseEnd()J

    move-result-wide v1

    const-string/jumbo v3, "responseEnd"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 288
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_domContentLoadedEventStart()J

    move-result-wide v1

    const-string v3, "domContentLoadedEventStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 289
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventStart()J

    move-result-wide v1

    const-string v3, "loadEventStart"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 290
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventEnd()J

    move-result-wide v1

    const-string v3, "loadEventEnd"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 291
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FP()J

    move-result-wide v1

    const-string v3, "firstPaint"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 292
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FSP()J

    move-result-wide v1

    const-string v3, "firstScreenPaint"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 293
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_TTI()J

    move-result-wide v1

    const-string/jumbo v3, "timeToInteractive"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 294
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T1()J

    move-result-wide v1

    const-string v3, "T1"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 295
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T2()J

    move-result-wide v1

    const-string v3, "T2"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 296
    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_finishLoad()J

    move-result-wide v1

    const-string v3, "finishLoad"

    invoke-virtual {v0, v3, v1, v2}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onStage(Ljava/lang/String;J)V

    .line 298
    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVAPMManager;->onEnd()V

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v1}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFinished: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_isFinished()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorMessage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadRequest: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLoad: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_startLoad()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "navigationStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_fetchStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "responseEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_responseEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domContentLoadedEventStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_domContentLoadedEventStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEventStart: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEventEnd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstPaint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FP()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firstScreenPaint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FSP()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeToInteractive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_TTI()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T1()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "T2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T2()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishLoad: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_finishLoad()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public uploadToNativeApm()V
    .locals 3

    .line 324
    sget-object v0, Lcom/taobao/monitor/procedure/ProcedureManagerProxy;->PROXY:Lcom/taobao/monitor/procedure/ProcedureManagerProxy;

    invoke-virtual {v0}, Lcom/taobao/monitor/procedure/ProcedureManagerProxy;->getLauncherProcedure()Lcom/taobao/monitor/procedure/IProcedure;

    move-result-object v0

    const-string v1, "H5PP"

    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0}, Lcom/taobao/monitor/procedure/IProcedure;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadToNativeApm(Lcom/taobao/monitor/procedure/IProcedure;)V

    goto :goto_0

    :cond_0
    const-string v0, "LauncherProcedure is not Alive"

    .line 328
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    sget-object v0, Lcom/taobao/monitor/procedure/ProcedureManagerProxy;->PROXY:Lcom/taobao/monitor/procedure/ProcedureManagerProxy;

    invoke-virtual {v0}, Lcom/taobao/monitor/procedure/ProcedureManagerProxy;->getCurrentActivityProcedure()Lcom/taobao/monitor/procedure/IProcedure;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 332
    invoke-interface {v0}, Lcom/taobao/monitor/procedure/IProcedure;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->uploadToNativeApm(Lcom/taobao/monitor/procedure/IProcedure;)V

    goto :goto_1

    :cond_1
    const-string v0, "CurrentActivityProcedure is not Alive"

    .line 335
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public uploadToNativeApm(Lcom/taobao/monitor/procedure/IProcedure;)V
    .locals 2

    .line 341
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_URL"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 342
    sget-object v0, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/taobao/windvane/util/CommonUtils;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_process"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 343
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_isFinished()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "H5_isFinished"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 344
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_errorCode"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 345
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_errorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5_errorMessage"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 346
    iget v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->htmlZCacheState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "H5_htmlZCacheState"

    invoke-interface {p1, v1, v0}, Lcom/taobao/monitor/procedure/IProcedure;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lcom/taobao/monitor/procedure/IProcedure;

    .line 348
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_initStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 349
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_initEnd"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    iget-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_loadRequest_uptime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_loadRequest"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 351
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_startLoad_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_startLoad"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 352
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_navigationStart_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_navigationStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_fetchStart_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_fetchStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 354
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_responseEnd_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_responseEnd"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 355
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_domContentLoadedEventStart_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_domContentLoadedEventStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventStart_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_loadEventStart"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 357
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_loadEventEnd_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_loadEventEnd"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 358
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FP_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_firstPaint"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 359
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_FSP_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_firstScreenPaint"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_TTI_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_timeToInteractive"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T1_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_T1"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_T2_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_T2"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    iget-object v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->pagePerformance:Landroid/taobao/windvane/extra/performance/WVPagePerformance;

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/performance/WVPagePerformance;->getH5_PP_finishLoad_uptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "H5_finishLoad"

    invoke-direct {p0, p1, v1, v0}, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->checkNonZeroStage(Lcom/taobao/monitor/procedure/IProcedure;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public webViewDidFinishInit()V
    .locals 2

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd:J

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initEnd_uptime:J

    return-void
.end method

.method public webViewDidStartInit()V
    .locals 2

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart:J

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/taobao/windvane/extra/performance/WVH5PPManager;->h5_PP_initStart_uptime:J

    return-void
.end method
