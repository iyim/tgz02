.class public Landroid/taobao/windvane/jsbridge/WVJsBridge;
.super Ljava/lang/Object;
.source "WVJsBridge.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CALL_ALIAS:I = 0x7

.field public static final CALL_DESTROY:I = 0x8

.field public static final CALL_EXECUTE:I = 0x0

.field public static final CALL_METHOD:I = 0x1

.field public static final CLOSED:I = 0x4

.field public static final ERROR_EXECUTE:I = 0x6

.field public static final NO_CLASS:I = 0x5

.field public static final NO_METHOD:I = 0x2

.field public static final NO_PERMISSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WVJsBridge"

.field public static enableGetParamByJs:Z = true

.field private static mHandler:Landroid/os/Handler;

.field private static mJsBridge:Landroid/taobao/windvane/jsbridge/WVJsBridge;

.field private static sExecutors:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private enabled:Z

.field private isInit:Z

.field private mSkipPreprocess:Z

.field public mTailBridges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/taobao/windvane/jsbridge/WVCallMethodContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 10

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->enabled:Z

    const/4 v1, 0x0

    .line 57
    iput-boolean v1, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->isInit:Z

    const/4 v1, 0x0

    .line 59
    iput-object v1, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mTailBridges:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v4, 0x5

    const/4 v5, 0x5

    const-wide/16 v6, 0x5

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->sExecutors:Ljava/util/concurrent/ExecutorService;

    .line 91
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->sExecutors:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 36
    sget-object v0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->sExecutors:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static aftercallMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V
    .locals 7

    const-string p1, "callMethod: Method "

    .line 304
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/taobao/windvane/jsbridge/WVPluginManager;->getOriginalPlugin(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "WVJsBridge"

    if-eqz v0, :cond_1

    .line 306
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v2

    const-string v3, "method"

    const-string v4, "name"

    if-eqz v2, :cond_0

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call method through alias name. newObject: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " newMethod: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    invoke-static {v1, v2}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    .line 311
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    const/4 v0, 0x7

    .line 312
    invoke-static {v0, p0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    .line 314
    :cond_1
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/taobao/windvane/webview/IWVWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 317
    instance-of v2, v0, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 318
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 319
    invoke-static {v3, p0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    return-void

    .line 321
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string p1, "cannot call method for context is null"

    .line 322
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x8

    .line 323
    invoke-static {p1, p0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    return-void

    .line 327
    :cond_3
    :try_start_0
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 328
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v4, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 329
    const-class v3, Landroid/taobao/windvane/jsbridge/WindVaneInterface;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 330
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 331
    iput-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->method:Ljava/lang/reflect/Method;

    .line 332
    invoke-static {v6, p0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    return-void

    .line 335
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " didn\'t has @WindVaneInterface annotation, obj="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " didn\'t found. It must has two parameter, Object.class and String.class, obj="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 344
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callMethod: Plugin "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " didn\'t found, you should call WVPluginManager.registerPlugin first."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    .line 346
    invoke-static {p1, p0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;)V
    .locals 6

    .line 151
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    const-string v1, "WVJsBridge"

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callMethod: url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->isInit:Z

    if-nez v0, :cond_1

    const-string p1, "jsbridge is not init."

    .line 155
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 158
    :cond_1
    invoke-direct {p0, p2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->getRequest(Ljava/lang/String;)Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "url format error and call canceled. url="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 163
    :cond_2
    iput-object p1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    if-eqz p3, :cond_3

    .line 170
    iput-object p3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;

    :cond_3
    if-eqz p4, :cond_4

    .line 173
    iput-object p4, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;

    .line 176
    :cond_4
    iget-object p2, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {p2}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 178
    sget-boolean p3, Landroid/taobao/windvane/jsbridge/WVJsBridge;->enableGetParamByJs:Z

    if-eqz p3, :cond_6

    const/4 p3, 0x1

    const/4 p4, 0x0

    .line 181
    :try_start_0
    iget-object v1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 189
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 190
    invoke-static {}, Landroid/taobao/windvane/monitor/WVMonitorService;->getJsBridgeMonitor()Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;

    move-result-object v2

    .line 192
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-interface {v2, p2, v1, v3, v4}, Landroid/taobao/windvane/monitor/WVJSBrdigeMonitorInterface;->commitParamParseError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_6

    .line 200
    new-array p3, p3, [Ljava/lang/Object;

    iget-object v1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    aput-object v1, p3, p4

    const-string p4, "javascript:window.WindVane&&window.WindVane.getParam(%s);"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;

    invoke-direct {p4, p0, v0, p2}, Landroid/taobao/windvane/jsbridge/WVJsBridge$1;-><init>(Landroid/taobao/windvane/jsbridge/WVJsBridge;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    invoke-interface {p1, p3, p4}, Landroid/taobao/windvane/webview/IWVWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    .line 228
    :cond_6
    sget-object p1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->sExecutors:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Landroid/taobao/windvane/jsbridge/WVJsBridge$2;

    invoke-direct {p3, p0, v0, p2}, Landroid/taobao/windvane/jsbridge/WVJsBridge$2;-><init>(Landroid/taobao/windvane/jsbridge/WVJsBridge;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/taobao/windvane/jsbridge/WVJsBridge;
    .locals 2

    const-class v0, Landroid/taobao/windvane/jsbridge/WVJsBridge;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mJsBridge:Landroid/taobao/windvane/jsbridge/WVJsBridge;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVJsBridge;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVJsBridge;-><init>()V

    sput-object v1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mJsBridge:Landroid/taobao/windvane/jsbridge/WVJsBridge;

    .line 83
    :cond_0
    sget-object v1, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mJsBridge:Landroid/taobao/windvane/jsbridge/WVJsBridge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRequest(Ljava/lang/String;)Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, "hybrid://"

    .line 471
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 476
    :cond_0
    :try_start_0
    new-instance v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    invoke-direct {v1}, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;-><init>()V

    const/16 v2, 0x3a

    const/16 v3, 0x9

    .line 477
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 478
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    const/16 v3, 0x2f

    .line 479
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    .line 480
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    const/16 v2, 0x3f

    .line 481
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 483
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    .line 484
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 486
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    .line 488
    :goto_0
    iget-object p1, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    return-object v1

    :catch_0
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V
    .locals 1

    .line 352
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 353
    iput p0, v0, Landroid/os/Message;->what:I

    .line 354
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 355
    sget-object p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public callMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V
    .locals 7

    .line 241
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v0

    const-string v1, "WVJsBridge"

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callMethod-obj:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " method:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " param:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->enabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 253
    :cond_1
    iget-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mSkipPreprocess:Z

    if-nez v0, :cond_8

    .line 258
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->getPagePreprocessors()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->getPagePreprocessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 259
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->getPagePreprocessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;

    .line 260
    iget-object v4, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;->needAuth(Landroid/taobao/windvane/webview/IWVWebView;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 261
    iget-object v0, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v1, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    iget-object v4, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-virtual {v3, p2, v0, v1, v4}, Landroid/taobao/windvane/jsbridge/WVJSAPIPageAuth;->apiAuthCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->aftercallMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    invoke-static {v2, p1}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    :goto_0
    return-void

    .line 273
    :cond_4
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->getJSBridgePreprocessors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->getJSBridgePreprocessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 274
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->getJSBridgePreprocessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/taobao/windvane/jsbridge/WVJSAPIAuthCheck;

    .line 275
    iget-object v4, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v5, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    iget-object v6, p1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-interface {v3, p2, v4, v5, v6}, Landroid/taobao/windvane/jsbridge/WVJSAPIAuthCheck;->apiAuthCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string p2, "preprocessor call fail, callMethod cancel."

    .line 276
    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {v2, p1}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    return-void

    .line 286
    :cond_6
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->getJSBridgeayncPreprocessors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->getJSBridgeayncPreprocessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 287
    invoke-static {}, Landroid/taobao/windvane/jsbridge/WVJsbridgeService;->getJSBridgeayncPreprocessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheck;

    .line 288
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheckCallBackforJsBridge;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheckCallBackforJsBridge;-><init>()V

    invoke-interface {v2, p2, p1, v3}, Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheck;->AsyncapiAuthCheck(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Landroid/taobao/windvane/jsbridge/WVAsyncAuthCheck$AsyncAuthCheckCallBack;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p1, "enter  WVAsyncAuthCheck preprocessor  "

    .line 289
    invoke-static {v1, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 296
    :cond_8
    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->aftercallMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_1
    const-string p2, "jsbridge is closed."

    .line 248
    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    .line 249
    invoke-static {p2, p1}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    return-void
.end method

.method public callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->callMethod(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->isInit:Z

    return-void
.end method

.method public exCallMethod(Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;)V
    .locals 0

    if-eqz p2, :cond_2

    .line 118
    iput-object p3, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;

    .line 119
    iput-object p4, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;

    .line 121
    iget-object p3, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string/jumbo p3, "{}"

    .line 122
    iput-object p3, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    .line 124
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "before call object=["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "]."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "WVJsBridge"

    invoke-static {p4, p3}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p3, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 128
    iget-object p3, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/taobao/windvane/jsbridge/WVPluginEntryManager;->getEntry(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 129
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    instance-of p1, p1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 130
    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 132
    invoke-static {p1, p2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 13

    .line 360
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    const/4 v1, 0x0

    const-string v2, "WVJsBridge"

    if-nez v0, :cond_0

    const-string p1, "CallMethodContext is null, and do nothing."

    .line 362
    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 365
    :cond_0
    new-instance v10, Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    iget-object v4, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    iget-object v5, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->token:Ljava/lang/String;

    iget-object v6, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    iget-object v7, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    iget-object v8, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->succeedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;

    iget-object v9, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->failedCallBack:Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;-><init>(Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/IJsApiSucceedCallBack;Landroid/taobao/windvane/jsbridge/IJsApiFailedCallBack;)V

    .line 367
    iget-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 368
    iget-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->setInstancename(Ljava/lang/String;)V

    .line 371
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v3, "{}"

    const-string v4, "method=["

    const-string v5, "HY_NO_HANDLER"

    const-string v6, ",url=["

    const-string v7, ""

    const-string v8, "msg"

    const-string v9, "."

    const-string v11, "]"

    const/4 v12, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    .line 454
    :pswitch_0
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "HY_FAILED"

    .line 455
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null Context Error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v1

    invoke-interface {v1}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v10, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return v12

    .line 446
    :pswitch_1
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "CALL_ALIAS"

    .line 447
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {p1, v8, v7}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 450
    invoke-virtual {v10, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->commitJsBridgeReturn(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return v12

    .line 438
    :pswitch_2
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 439
    invoke-virtual {p1, v5}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute error:method=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    invoke-virtual {p1, v8, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v10, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return v12

    .line 430
    :pswitch_3
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 431
    invoke-virtual {p1, v5}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Class Error: method=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {p1, v8, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v10, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return v12

    .line 422
    :pswitch_4
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v1, "HY_CLOSED"

    .line 423
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 424
    invoke-virtual {p1, v8, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v10, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return v12

    .line 414
    :pswitch_5
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v1, "HY_NO_PERMISSION"

    .line 415
    invoke-virtual {p1, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {p1, v8, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v10, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return v12

    .line 406
    :pswitch_6
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 407
    invoke-virtual {p1, v5}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No Method Error: method=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v10}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v0

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-virtual {p1, v8, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v10, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return v12

    .line 397
    :pswitch_7
    iget-object p1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 399
    :try_start_0
    iget-object v4, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->method:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v10, v5, v1

    iget-object v1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    iget-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    :goto_7
    aput-object v3, v5, v12

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call method "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " exception. "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    return v12

    .line 373
    :pswitch_8
    iget-object p1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->classinstance:Ljava/lang/Object;

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "call method=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], object=["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_a

    const/4 v4, 0x0

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    check-cast p1, Landroid/taobao/windvane/jsbridge/WVApiPlugin;

    iget-object v1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    iget-object v4, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_a

    :cond_b
    iget-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    :goto_a
    invoke-virtual {p1, v1, v3, v10}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;->executeSafe(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 377
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WVApiPlugin execute failed.object:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", method: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 p1, 0x6

    .line 380
    invoke-static {p1, v0}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->startCall(ILandroid/taobao/windvane/jsbridge/WVCallMethodContext;)V

    goto :goto_b

    .line 384
    :cond_d
    :try_start_1
    iget-object p1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    sget-object p1, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    .line 385
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 387
    invoke-interface {p1, v2}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 388
    invoke-interface {p1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v12

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 390
    :cond_e
    iget-object p1, v0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->webview:Landroid/taobao/windvane/webview/IWVWebView;

    sget-object p1, Landroid/taobao/windvane/webview/IWVWebView;->JsbridgeHis:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_b
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 101
    :try_start_0
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->isInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->enabled:Z

    return-void
.end method

.method public skipPreprocess()V
    .locals 1

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mSkipPreprocess:Z

    return-void
.end method

.method public declared-synchronized tryToRunTailBridges()V
    .locals 5

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mTailBridges:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mTailBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;

    const-string v2, ""

    .line 71
    invoke-static {v1, v2}, Landroid/taobao/windvane/jsbridge/WVJsBridge;->aftercallMethod(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)V

    const-string v2, "WVJsBridge"

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excute TailJSBridge : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/taobao/windvane/util/TaoLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mTailBridges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/WVJsBridge;->mTailBridges:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
