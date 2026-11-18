.class public Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;
.super Ljava/lang/Object;
.source "UltronJSIEngine.java"

# interfaces
.implements Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/ultron/engine/logic/IUltronLogicEngine<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static JS_EXE_TIME_OUT:I = 0xbb8

.field private static final MESSAGE_JSI_INIT_TIME_OUT:I = 0x2712

.field private static final MESSAGE_JS_CALL_TIME_OUT:I = 0x2711

.field private static final TAG:Ljava/lang/String; = "UltronJSIEngine"

.field private static final UC_WAIT_TIME:I = 0xbb8

.field private static cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static engineCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mockJSFileContent:Ljava/lang/String;

.field private static mockJSFileName:Ljava/lang/String;


# instance fields
.field private LogicCallBackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lcom/alibaba/android/ultron/engine/logic/LogicCallBack<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private exceptionListener:Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;

.field private hasTimeout:Z

.field private volatile isJSIInitTimeout:Z

.field private jsThread:Landroid/os/HandlerThread;

.field private mBizName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mJSContext:Lcom/alibaba/jsi/standard/JSContext;

.field private mJSEngine:Lcom/alibaba/jsi/standard/JSEngine;

.field private mJSHandler:Landroid/os/Handler;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->engineCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 79
    sput-object v0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mockJSFileName:Ljava/lang/String;

    .line 80
    sput-object v0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mockJSFileContent:Ljava/lang/String;

    .line 429
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->cacheMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;)V
    .locals 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    .line 62
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    .line 64
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSEngine:Lcom/alibaba/jsi/standard/JSEngine;

    .line 65
    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->LogicCallBackMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->hasTimeout:Z

    .line 83
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->isJSIInitTimeout:Z

    .line 87
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->exceptionListener:Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;

    .line 91
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "UltronJSIEngine"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->jsThread:Landroid/os/HandlerThread;

    .line 93
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->jsThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->jsThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    .line 98
    new-instance p1, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$1;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSEngine:Lcom/alibaba/jsi/standard/JSEngine;

    if-nez p1, :cond_2

    .line 122
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->initializeJSI()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->hasTimeout:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->hasTimeout:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->notifyException(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSContext;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsEngineError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Lcom/alibaba/jsi/standard/JSContext;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onExecuteResult(Lcom/alibaba/jsi/standard/JSContext;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->initLogicEngineInteral(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->reportTimeTrace()V

    return-void
.end method

.method static synthetic access$1600(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->callJsMethodInternal(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/jsi/standard/JSEngine;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSEngine:Lcom/alibaba/jsi/standard/JSEngine;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Lcom/alibaba/jsi/standard/JSEngine;)Lcom/alibaba/jsi/standard/JSEngine;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSEngine:Lcom/alibaba/jsi/standard/JSEngine;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Landroid/os/HandlerThread;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->jsThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->jsThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->isJSIInitTimeout:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->exceptionListener:Lcom/alibaba/android/ultron/engine/UltronEngine$ExceptionListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsEngineInitError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Ljava/lang/String;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->checkJSEngineSoExist()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->initJSContext()V

    return-void
.end method

.method static synthetic access$600(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->removeJsCallTimer()V

    return-void
.end method

.method static synthetic access$700(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)Ljava/util/Map;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->LogicCallBackMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    sput-object p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mockJSFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 59
    sput-object p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mockJSFileContent:Ljava/lang/String;

    return-object p0
.end method

.method private addConsoleLog()V
    .locals 7

    const-string v0, "log"

    .line 227
    new-instance v1, Lcom/alibaba/jsi/standard/js/EngineScope;

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {v2}, Lcom/alibaba/jsi/standard/JSContext;->getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/jsi/standard/js/EngineScope;-><init>(Lcom/alibaba/jsi/standard/JSEngine;)V

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {v2}, Lcom/alibaba/jsi/standard/JSContext;->globalObject()Lcom/alibaba/jsi/standard/js/JSObject;

    move-result-object v2

    .line 230
    new-instance v3, Lcom/alibaba/jsi/standard/js/JSObject;

    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-direct {v3, v4}, Lcom/alibaba/jsi/standard/js/JSObject;-><init>(Lcom/alibaba/jsi/standard/JSContext;)V

    .line 231
    new-instance v4, Lcom/alibaba/jsi/standard/js/JSFunction;

    iget-object v5, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    new-instance v6, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$3;

    invoke-direct {v6, p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$3;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V

    invoke-direct {v4, v5, v6, v0}, Lcom/alibaba/jsi/standard/js/JSFunction;-><init>(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSCallback;Ljava/lang/String;)V

    .line 243
    iget-object v5, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {v3, v5, v0, v4}, Lcom/alibaba/jsi/standard/js/JSObject;->set(Lcom/alibaba/jsi/standard/JSContext;Ljava/lang/String;Lcom/alibaba/jsi/standard/js/JSValue;)Z

    .line 244
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    const-string v5, "console"

    invoke-virtual {v2, v0, v5, v3}, Lcom/alibaba/jsi/standard/js/JSObject;->set(Lcom/alibaba/jsi/standard/JSContext;Ljava/lang/String;Lcom/alibaba/jsi/standard/js/JSValue;)Z

    .line 245
    invoke-virtual {v4}, Lcom/alibaba/jsi/standard/js/JSFunction;->delete()V

    .line 246
    invoke-virtual {v3}, Lcom/alibaba/jsi/standard/js/JSObject;->delete()V

    .line 247
    invoke-virtual {v2}, Lcom/alibaba/jsi/standard/js/JSObject;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    throw v0
.end method

.method private addJSCallbackFunc()V
    .locals 6

    const-string v0, "jsCallback"

    .line 255
    new-instance v1, Lcom/alibaba/jsi/standard/js/EngineScope;

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {v2}, Lcom/alibaba/jsi/standard/JSContext;->getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/jsi/standard/js/EngineScope;-><init>(Lcom/alibaba/jsi/standard/JSEngine;)V

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {v2}, Lcom/alibaba/jsi/standard/JSContext;->globalObject()Lcom/alibaba/jsi/standard/js/JSObject;

    move-result-object v2

    .line 258
    new-instance v3, Lcom/alibaba/jsi/standard/js/JSFunction;

    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    new-instance v5, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$4;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V

    invoke-direct {v3, v4, v5, v0}, Lcom/alibaba/jsi/standard/js/JSFunction;-><init>(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSCallback;Ljava/lang/String;)V

    .line 300
    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {v2, v4, v0, v3}, Lcom/alibaba/jsi/standard/js/JSObject;->set(Lcom/alibaba/jsi/standard/JSContext;Ljava/lang/String;Lcom/alibaba/jsi/standard/js/JSValue;)Z

    .line 301
    invoke-virtual {v3}, Lcom/alibaba/jsi/standard/js/JSFunction;->delete()V

    .line 302
    invoke-virtual {v2}, Lcom/alibaba/jsi/standard/js/JSObject;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    throw v0
.end method

.method private beginJSIInitTimer()V
    .locals 4

    .line 795
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2712

    .line 798
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 799
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private beginJsCallTimer()V
    .locals 4

    .line 780
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2711

    .line 783
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    sget v2, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->JS_EXE_TIME_OUT:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private callJsMethodInternal(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ultron/engine/logic/LogicCallBack<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callJsMethodInternal start"

    .line 515
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "UltronJSIEngine"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->LogicCallBackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    if-nez v0, :cond_0

    .line 518
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 520
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->LogicCallBackMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    invoke-interface {v0, p3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 523
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->beginJsCallTimer()V

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->exeCallFunc(Ljava/lang/String;Ljava/util/List;)V

    const-string p1, "callJsMethodInternal finished"

    .line 525
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private checkJSEngineSoExist()Ljava/lang/String;
    .locals 6

    .line 188
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/extra/core/WVCore;->getV8SoPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "getV8SoPath is null"

    return-object v0

    .line 193
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->beginJSIInitTimer()V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 201
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/extra/core/WVCore;->extractWebCoreLibrary(Landroid/content/Context;)Z

    move-result v3

    .line 202
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->removeJSIInitTimer()V

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 205
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->jsLoadSoUseTime(Ljava/lang/String;J)V

    .line 207
    iget-boolean v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->isJSIInitTimeout:Z

    if-eqz v1, :cond_2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extract success,but has timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez v3, :cond_3

    const-string v0, "extractWebCoreLibrary fail"

    return-object v0

    .line 215
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v0, "extractWebCoreLibrary success,but so file not exists"

    return-object v0
.end method

.method private exeCallFunc(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    .line 533
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/JSEngine;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "JSEngine disposed"

    .line 534
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsEngineError(Ljava/lang/String;)V

    return-void

    .line 537
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->isDisposed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "JSContext disposed"

    .line 538
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsEngineError(Ljava/lang/String;)V

    return-void

    .line 542
    :cond_1
    new-instance v1, Lcom/alibaba/jsi/standard/js/EngineScope;

    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSContext;->getJSEngine()Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/jsi/standard/js/EngineScope;-><init>(Lcom/alibaba/jsi/standard/JSEngine;)V

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {v0, p1}, Lcom/alibaba/jsi/standard/JSContext;->getGlobal(Ljava/lang/String;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 546
    move-object p1, v0

    check-cast p1, Lcom/alibaba/jsi/standard/js/JSFunction;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 548
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 549
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alibaba/jsi/standard/js/JSValue;

    const/4 v5, 0x0

    .line 550
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 551
    new-instance v6, Lcom/alibaba/jsi/standard/js/JSString;

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/alibaba/jsi/standard/js/JSString;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v3

    .line 554
    :cond_3
    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/jsi/standard/js/JSFunction;->call(Lcom/alibaba/jsi/standard/JSContext;Lcom/alibaba/jsi/standard/js/JSValue;[Lcom/alibaba/jsi/standard/js/JSValue;)Lcom/alibaba/jsi/standard/js/JSValue;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 557
    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    goto/16 :goto_2

    .line 559
    :cond_4
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/JSContext;->getException()Lcom/alibaba/jsi/standard/js/JSException;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string p2, "name: "

    .line 562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {p1, p2}, Lcom/alibaba/jsi/standard/js/JSException;->getName(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; message: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {p1, p2}, Lcom/alibaba/jsi/standard/js/JSException;->getMessage(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; stack: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    invoke-virtual {p1, p2}, Lcom/alibaba/jsi/standard/js/JSException;->getStack(Lcom/alibaba/jsi/standard/JSContext;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 567
    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/js/JSException;->delete()V

    .line 568
    invoke-direct {p0, p2}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsError(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string p2, "get exception failed"

    .line 570
    invoke-direct {p0, p2}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsEngineError(Ljava/lang/String;)V

    .line 572
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/jsi/standard/js/JSException;->delete()V

    :goto_2
    if-eqz v4, :cond_6

    .line 575
    array-length p1, v4

    :goto_3
    if-ge v2, p1, :cond_6

    aget-object p2, v4, v2

    .line 576
    invoke-virtual {p2}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 579
    :cond_6
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/js/JSValue;->delete()V

    goto :goto_4

    .line 581
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get global failed, method : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsEngineError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 584
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "executeJS exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsEngineError(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    :goto_4
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    return-void

    :goto_5
    invoke-virtual {v1}, Lcom/alibaba/jsi/standard/js/EngineScope;->exit()V

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method private executeJS(Ljava/lang/String;)V
    .locals 4

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_logicFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    sget-object v1, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mockJSFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    sget-object p1, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mockJSFileContent:Ljava/lang/String;

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    invoke-direct {v2}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;-><init>()V

    const-string v3, "content"

    .line 323
    invoke-virtual {v2, v3, p1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object v2

    const-string v3, "fileName"

    .line 324
    invoke-virtual {v2, v3, v0}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->putData(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface$DataMapBuilder;->build()Ljava/util/Map;

    move-result-object v2

    const-string v3, "STATUS_ENGINE_LOGIC_ENGINE_INIT_FILE"

    .line 320
    invoke-interface {v1, v3, v2}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->sendStatusEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 327
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    invoke-static {v1}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$5;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$5;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;)V

    const-string v3, "EVENT_UPDATA_JS_FILE"

    invoke-interface {v1, v3, v2}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->registerStatusCallback(Ljava/lang/String;Lcom/alibaba/android/ultron/inter/IStatusListener;)V

    .line 344
    :cond_1
    new-instance v1, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$6;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    if-nez p1, :cond_2

    return-void

    .line 398
    :cond_2
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 399
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 401
    :cond_3
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private findAllSoInfo(Ljava/io/File;)Lcom/alibaba/fastjson/JSONArray;
    .locals 5
    .param p1    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 701
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 702
    array-length v0, p1

    if-lez v0, :cond_3

    .line 703
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 704
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 705
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 707
    invoke-direct {p0, v3}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->findAllSoInfo(Ljava/io/File;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 709
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 712
    :cond_0
    invoke-direct {p0, v3}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->getSoFileInfo(Ljava/io/File;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 714
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private getJSISoInfo()Ljava/lang/String;
    .locals 9

    const-string v0, "UltronJSIEngine"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 654
    :try_start_0
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v4

    invoke-virtual {v4}, Landroid/taobao/windvane/extra/core/WVCore;->getV8SoPath()Ljava/lang/String;

    move-result-object v4

    .line 655
    new-array v5, v3, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "v8SoPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    if-nez v4, :cond_0

    return-object v1

    .line 659
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v1

    .line 668
    :cond_1
    new-array v6, v3, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "firstParent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 670
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    return-object v1

    .line 674
    :cond_2
    new-array v6, v3, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "secondParent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 676
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v1

    .line 680
    :cond_3
    new-array v6, v3, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "thirdParent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v0, v6}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 682
    invoke-direct {p0, v5}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->findAllSoInfo(Ljava/io/File;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 683
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v7, "v8SoPath"

    .line 684
    invoke-virtual {v6, v7, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_4

    .line 686
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "allSoInfos"

    .line 687
    invoke-virtual {v6, v5, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_4
    new-array v4, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "soInfo: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 690
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v4

    .line 692
    new-array v3, v3, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getJSISoInfo error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method private getSoFileInfo(Ljava/io/File;)Lcom/alibaba/fastjson/JSONObject;
    .locals 5

    if-eqz p1, :cond_0

    .line 724
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 727
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 728
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 729
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 730
    invoke-virtual {v4, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 731
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lastModified"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "absolutePath"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "fileLength"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private initJSContext()V
    .locals 9

    const-string v0, "jsEngineContextInit"

    .line 149
    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->beginSection(Ljava/lang/String;)V

    .line 150
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 152
    invoke-static {}, Landroid/taobao/windvane/extra/core/WVCore;->getInstance()Landroid/taobao/windvane/extra/core/WVCore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/taobao/windvane/extra/core/WVCore;->getV8SoPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UltronJSIEngine"

    if-nez v2, :cond_0

    const-string v0, "jsEngineSoPath is null"

    .line 154
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->onJsEngineInitError(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v4, "libwebviewuc.so"

    const-string v5, "libjsi.so"

    .line 158
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 160
    new-array v6, v5, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "jsiSoPath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 161
    new-array v5, v5, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "jsEngineSoPath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v5}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "jsiSoPath"

    .line 163
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "jsEngineSoPath"

    .line 164
    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alibaba/jsi/standard/JSEngine;->loadSo(Landroid/content/Context;Landroid/os/Bundle;)Z

    .line 166
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new_ultron_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->engineCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "name"

    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "version"

    const-string v5, "1.0"

    .line 168
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "datadir"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/alibaba/jsi/standard/JSEngine;->createInstance(Landroid/content/Context;Landroid/os/Bundle;)Lcom/alibaba/jsi/standard/JSEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSEngine:Lcom/alibaba/jsi/standard/JSEngine;

    .line 172
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSEngine:Lcom/alibaba/jsi/standard/JSEngine;

    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/jsi/standard/JSEngine;->setEnableStats(Z)V

    const-string v1, "initialize JSEngine finish"

    .line 173
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSEngine:Lcom/alibaba/jsi/standard/JSEngine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Context_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/jsi/standard/JSEngine;->createContext(Ljava/lang/String;)Lcom/alibaba/jsi/standard/JSContext;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSContext:Lcom/alibaba/jsi/standard/JSContext;

    .line 175
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->addConsoleLog()V

    .line 176
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->addJSCallbackFunc()V

    const-string v1, "initialize JSContext finish"

    .line 177
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    invoke-static {v0}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->endSection(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->reportTimeTrace()V

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/ultron/inter/UltronDebugFetcher;->getUltronDebug(Ljava/lang/String;)Lcom/alibaba/android/ultron/inter/UltronDebugInterface;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "STATUS_ENGINE_LOGIC_ENGINE_INIT"

    invoke-interface {v0, v2, v1}, Lcom/alibaba/android/ultron/inter/UltronDebugInterface;->sendStatusEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private initLogicEngineInteral(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 435
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLogicEngine jsFilePath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "UltronJSIEngine"

    invoke-static {v2, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 439
    sget-object v4, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->cacheMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 440
    sget-object p2, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->cacheMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    .line 442
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 443
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 444
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_1

    const-string v6, "file"

    .line 445
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    const-string v5, "android_asset"

    .line 446
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mContext:Landroid/content/Context;

    const-string v5, "/android_asset/"

    const-string v6, ""

    .line 448
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 447
    invoke-static {v1, v4}, Lcom/alibaba/android/ultron/vfw/util/FileUtil;->getAssetsFileStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 450
    :cond_1
    invoke-static {v1}, Lcom/alibaba/android/ultron/engine/utils/MD5Utils;->md5Decode32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_3

    .line 458
    :cond_2
    sget-object p2, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->cacheMap:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v1

    :goto_0
    if-nez p2, :cond_3

    .line 463
    :try_start_0
    new-instance v1, Ljava/lang/String;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/taobao/android/dinamic/parser/IOUtils;->read(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 465
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v2, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 470
    invoke-direct {p0, p2}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->executeJS(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p1, "initLogicEngine but jsContent is null"

    .line 472
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_2
    return-void

    .line 452
    :cond_5
    :goto_3
    new-instance p1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    const-string p2, "md5 check failed"

    invoke-direct {p1, p2}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;-><init>(Ljava/lang/String;)V

    const-string p2, "F_ULTRON_ENGINE_10006_JSI"

    .line 453
    iput-object p2, p1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    const-string p2, "js file md5 check failed"

    .line 454
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 455
    invoke-direct {p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->notifyException(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    return-void

    .line 432
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "jsFilePath can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initializeJSI()V
    .locals 2

    const-string v0, "initialize JSI"

    .line 127
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "UltronJSIEngine"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$2;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyException(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V
    .locals 4

    .line 760
    new-instance v0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$10;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$10;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    .line 768
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 769
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    const/4 v0, 0x1

    .line 774
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UltronJSIEngine"

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/android/ultron/vfw/util/UMLLUtil;->logErrorLogicEngine(Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    return-void
.end method

.method private onExecuteResult(Lcom/alibaba/jsi/standard/JSContext;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private onJsEngineError(Ljava/lang/String;)V
    .locals 3

    .line 742
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->removeJsCallTimer()V

    .line 743
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js engine error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;-><init>(Ljava/lang/String;)V

    const-string p1, "F_ULTRON_ENGINE_10004_JSI"

    .line 744
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    const-string p1, "client_engine"

    .line 745
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->domain:Ljava/lang/String;

    .line 747
    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->notifyException(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    return-void
.end method

.method private onJsEngineInitError(Ljava/lang/String;)V
    .locals 3

    .line 635
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js engine init error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;-><init>(Ljava/lang/String;)V

    const-string p1, "F_ULTRON_ENGINE_10002_JSI"

    .line 636
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    const-string p1, "client_engine"

    .line 637
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->domain:Ljava/lang/String;

    .line 640
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->getJSISoInfo()Ljava/lang/String;

    move-result-object p1

    .line 641
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->extraMsg:Ljava/lang/String;

    .line 643
    iget-object p1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 644
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 646
    :cond_0
    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->notifyException(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    return-void
.end method

.method private onJsError(Ljava/lang/String;)V
    .locals 3

    .line 751
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->removeJsCallTimer()V

    .line 752
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronError;-><init>(Ljava/lang/String;)V

    const-string p1, "F_ULTRON_ENGINE_10003_JSI"

    .line 753
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->code:Ljava/lang/String;

    const-string p1, "client_engine"

    .line 754
    iput-object p1, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronError;->domain:Ljava/lang/String;

    .line 756
    invoke-direct {p0, v0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->notifyException(Lcom/alibaba/android/ultron/vfw/instance/UltronError;)V

    return-void
.end method

.method private removeJSIInitTimer()V
    .locals 2

    .line 803
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2712

    .line 806
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private removeJsCallTimer()V
    .locals 2

    .line 788
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2711

    .line 791
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private reportTimeTrace()V
    .locals 4

    .line 503
    invoke-static {}, Lcom/taobao/android/ultron/datamodel/util/TimeTrace;->getApmTimeMap()Ljava/util/Map;

    move-result-object v0

    .line 504
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 505
    iget-object v2, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mBizName:Ljava/lang/String;

    const-string v3, "bizType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-static {v0, v1}, Lcom/alibaba/android/ultron/engine/utils/AppMonitorUtils;->perfOptStateCommit(Ljava/util/Map;Ljava/util/Map;)V

    .line 507
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public addLogicEventCallback(Ljava/lang/String;Lcom/alibaba/android/ultron/engine/logic/EventCallback;)V
    .locals 0

    return-void
.end method

.method public callMethod(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ultron/engine/logic/LogicCallBack<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 484
    iput-boolean v1, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->hasTimeout:Z

    .line 485
    new-instance v1, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$8;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 479
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public destroy()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSEngine:Lcom/alibaba/jsi/standard/JSEngine;

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/alibaba/jsi/standard/JSEngine;->printObjects()V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    return-void

    .line 605
    :cond_1
    new-instance v1, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$9;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public initLogicEngine(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 412
    iget-object v0, p0, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;->mJSHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 415
    :cond_0
    new-instance v1, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine$7;-><init>(Lcom/alibaba/android/ultron/engine/logic/UltronJSIEngine;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
