.class public Landroid/taobao/windvane/extra/uc/AliRequestAdapter;
.super Ljava/lang/Object;
.source "AliRequestAdapter.java"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IRequest;


# static fields
.field public static final PHASE_ENDDATA:Ljava/lang/String; = "enddata"

.field private static final PHASE_NORMAL:Ljava/lang/String; = "normal"

.field public static final PHASE_RELOAD:Ljava/lang/String; = "reload"

.field public static final PHASE_STOP:Ljava/lang/String; = "stop"

.field public static connectTimeout:I = 0x2710

.field public static readTimeout:I = 0x2710

.field public static retryTimes:I = 0x1


# instance fields
.field TAG:Ljava/lang/String;

.field private bizCode:Ljava/lang/String;

.field public cancelPhase:Ljava/lang/String;

.field mAliRequest:Lanetwork/channel/Request;

.field private final mClientResource:Ljava/lang/Object;

.field private mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

.field mFutureResponse:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lanetwork/channel/Response;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUCProxy:Z

.field private mIsUseWebP:Z

.field private mLoadType:I

.field private mMethod:Ljava/lang/String;

.field private mRequestType:I

.field private mUCHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mUploadFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadFileTotalLen:J

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lanetwork/channel/Request;Lcom/uc/webview/export/internal/interfaces/EventHandler;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "alinetwork"

    .line 27
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    const-string p1, "GET"

    .line 33
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mMethod:Ljava/lang/String;

    .line 48
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mClientResource:Ljava/lang/Object;

    const-string p1, "normal"

    .line 56
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->cancelPhase:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    return-void
.end method

.method constructor <init>(Lcom/uc/webview/export/internal/interfaces/EventHandler;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uc/webview/export/internal/interfaces/EventHandler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;JIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "alinetwork"

    .line 27
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    const-string v0, "GET"

    .line 33
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mMethod:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mClientResource:Ljava/lang/Object;

    const-string v0, "normal"

    .line 56
    iput-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->cancelPhase:Ljava/lang/String;

    .line 69
    iput-boolean p13, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mIsUseWebP:Z

    .line 70
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .line 71
    iput-object p2, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUrl:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mMethod:Ljava/lang/String;

    .line 73
    iput-boolean p4, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mIsUCProxy:Z

    .line 74
    iput-object p5, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mHeaders:Ljava/util/Map;

    .line 75
    iput-object p6, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUCHeaders:Ljava/util/Map;

    .line 76
    iput-object p7, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUploadFileMap:Ljava/util/Map;

    .line 77
    iput-object p8, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUploadDataMap:Ljava/util/Map;

    .line 78
    iput-wide p9, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUploadFileTotalLen:J

    .line 79
    iput p11, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mRequestType:I

    .line 80
    iput p12, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mLoadType:I

    .line 81
    iput-object p14, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->bizCode:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->formatAliRequest()Lanetwork/channel/Request;

    move-result-object p1

    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mAliRequest:Lanetwork/channel/Request;

    return-void
.end method

.method private formatAliRequest()Lanetwork/channel/Request;
    .locals 13

    .line 86
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mMethod:Ljava/lang/String;

    iget-boolean v3, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mIsUCProxy:Z

    iget-object v4, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mHeaders:Ljava/util/Map;

    iget-object v5, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUCHeaders:Ljava/util/Map;

    iget-object v6, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUploadFileMap:Ljava/util/Map;

    iget-object v7, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUploadDataMap:Ljava/util/Map;

    iget-wide v8, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUploadFileTotalLen:J

    iget v10, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mRequestType:I

    iget v11, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mLoadType:I

    iget-boolean v12, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mIsUseWebP:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->formatAliRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZ)Lanetwork/channel/Request;

    move-result-object v0

    return-object v0
.end method

.method private formatAliRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JIIZ)Lanetwork/channel/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;JIIZ)",
            "Lanetwork/channel/Request;"
        }
    .end annotation

    if-eqz p12, :cond_0

    .line 95
    :try_start_0
    invoke-static {p1}, Landroid/taobao/windvane/util/CommonUtils;->isPicture(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 96
    invoke-static {p1}, Lcom/taobao/tao/util/ImageStrategyDecider;->justConvergeAndWebP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 97
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 98
    iget-object p5, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " decideUrl to : "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p3

    .line 107
    :catch_0
    :cond_0
    :try_start_1
    new-instance p3, Lanetwork/channel/entity/RequestImpl;

    invoke-direct {p3, p1}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/lang/String;)V

    const/4 p5, 0x0

    .line 108
    invoke-interface {p3, p5}, Lanetwork/channel/Request;->setFollowRedirects(Z)V

    .line 109
    iget-object p5, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->bizCode:Ljava/lang/String;

    invoke-interface {p3, p5}, Lanetwork/channel/Request;->setBizId(Ljava/lang/String;)V

    .line 110
    sget p5, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->retryTimes:I

    invoke-interface {p3, p5}, Lanetwork/channel/Request;->setRetryTime(I)V

    .line 111
    sget p5, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->connectTimeout:I

    invoke-interface {p3, p5}, Lanetwork/channel/Request;->setConnectTimeout(I)V

    .line 112
    sget p5, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->readTimeout:I

    invoke-interface {p3, p5}, Lanetwork/channel/Request;->setReadTimeout(I)V

    .line 113
    invoke-static {p1}, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isNeedCookie(Ljava/lang/String;)Z

    move-result p5

    invoke-interface {p3, p5}, Lanetwork/channel/Request;->setCookieEnabled(Z)V

    .line 114
    invoke-interface {p3, p2}, Lanetwork/channel/Request;->setMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p4, :cond_2

    const-string p2, "f-refer"

    const-string/jumbo p5, "wv_h5"

    .line 121
    invoke-interface {p3, p2, p5}, Lanetwork/channel/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->getInstance()Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;

    move-result-object p2

    invoke-virtual {p2, p4, p1}, Landroid/taobao/windvane/extra/uc/UCNetworkDelegate;->onSendRequest(Ljava/util/Map;Ljava/lang/String;)V

    .line 123
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 124
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 126
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 127
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 128
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 129
    iget-object p5, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "AliRequestAdapter from uc header key="

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ",value="

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    invoke-interface {p3, p4, p2}, Lanetwork/channel/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 134
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getPerformanceMonitor()Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;

    move-result-object p1

    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUrl:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    invoke-interface {p1, p2, p4, p5}, Landroid/taobao/windvane/monitor/WVPerformanceMonitorInterface;->didResourceStartLoadAtTime(Ljava/lang/String;J)V

    :cond_3
    return-object p3

    :catch_1
    move-exception p1

    .line 116
    iget-object p2, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " AliRequestAdapter formatAliRequest Exception"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    const-string v0, "AliRequestAdapter cancel ="

    .line 156
    sget-boolean v1, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isStop:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "stop"

    .line 157
    iput-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->cancelPhase:Ljava/lang/String;

    .line 159
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phase:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->cancelPhase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mFutureResponse:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mFutureResponse:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AliRequestAdapter cancel desc url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mFutureResponse:Ljava/util/concurrent/Future;

    .line 163
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanetwork/channel/Response;

    invoke-interface {v3}, Lanetwork/channel/Response;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1
    invoke-virtual {p0}, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->complete()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    .line 171
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 168
    iget-object v2, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mFutureResponse:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 174
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_2
    return-void
.end method

.method complete()V
    .locals 3

    const/4 v0, 0x0

    .line 144
    sput-boolean v0, Landroid/taobao/windvane/extra/uc/WVUCWebView;->isStop:Z

    .line 145
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    const-string v2, "AliRequestAdapter complete will notify"

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 150
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public getAliRequest()Lanetwork/channel/Request;
    .locals 1

    .line 226
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mAliRequest:Lanetwork/channel/Request;

    return-object v0
.end method

.method public getEventHandler()Lcom/uc/webview/export/internal/interfaces/EventHandler;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getIsUCProxy()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mIsUCProxy:Z

    return v0
.end method

.method public getLoadtype()I
    .locals 1

    .line 261
    iget v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mLoadType:I

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()I
    .locals 1

    .line 190
    iget v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mRequestType:I

    return v0
.end method

.method public getUCHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUCHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUploadDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUploadDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUploadFileMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUploadFileMap:Ljava/util/Map;

    return-object v0
.end method

.method public getUploadFileTotalLen()J
    .locals 2

    .line 256
    iget-wide v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUploadFileTotalLen:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V
    .locals 0

    .line 180
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    return-void
.end method

.method public setFutureResponse(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lanetwork/channel/Response;",
            ">;)V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mFutureResponse:Ljava/util/concurrent/Future;

    return-void
.end method

.method public waitUntilComplete(I)V
    .locals 4

    .line 211
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mEventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AliRequestAdapter waitUntilComplete timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v1, p0, Landroid/taobao/windvane/extra/uc/AliRequestAdapter;->mClientResource:Ljava/lang/Object;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 220
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_2
    return-void
.end method
