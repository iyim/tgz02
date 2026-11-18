.class Lcom/taobao/tao/remotebusiness/login/LoginHandler;
.super Landroid/os/Handler;
.source "LoginHandler.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/login/onLoginListener;


# static fields
.field private static final DEFAULT_USERINFO:Ljava/lang/String; = "DEFAULT"

.field public static final LOGIN_CANCEL:I = 0xde6ff

.field public static final LOGIN_FAILED:I = 0xde6fe

.field public static final LOGIN_SUCCESS:I = 0xde6fd

.field public static final LOGIN_TIMEOUT:I = 0xde700

.field private static final TAG:Ljava/lang/String; = "mtopsdk.LoginHandler"

.field private static handlerThread:Landroid/os/HandlerThread;

.field private static mtopLoginHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/remotebusiness/login/LoginHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mtopInstance:Lmtopsdk/mtop/intf/Mtop;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private userInfo:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopLoginHandlerMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 0
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 67
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    return-void
.end method

.method private static getKey(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 199
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DEFAULT"

    .line 200
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static instance()Lcom/taobao/tao/remotebusiness/login/LoginHandler;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->instance(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/login/LoginHandler;
    .locals 4
    .param p0    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-static {v0}, Lmtopsdk/mtop/intf/Mtop;->instance(Landroid/content/Context;)Lmtopsdk/mtop/intf/Mtop;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 76
    :goto_0
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "DEFAULT"

    .line 77
    :cond_1
    invoke-static {p0, p1}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->getKey(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 78
    sget-object v1, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopLoginHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    if-nez v1, :cond_4

    .line 80
    const-class v2, Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    monitor-enter v2

    .line 81
    :try_start_0
    sget-object v1, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopLoginHandlerMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    if-nez v1, :cond_3

    .line 83
    sget-object v1, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->handlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 84
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "mtopsdk.LoginHandler"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->handlerThread:Landroid/os/HandlerThread;

    .line 85
    sget-object v1, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 87
    :cond_2
    new-instance v1, Lcom/taobao/tao/remotebusiness/login/LoginHandler;

    sget-object v3, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v0, p1, v3}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;-><init>(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Landroid/os/Looper;)V

    .line 88
    sget-object p1, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopLoginHandlerMap:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private updateXStateSessionInfo(Ljava/lang/String;)V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->getLoginContext(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/login/LoginContext;

    move-result-object v0

    const-string v1, "mtopsdk.LoginHandler"

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [updateXStateSessionInfo] LoginContext is null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/taobao/tao/remotebusiness/login/LoginContext;->sid:Ljava/lang/String;

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/taobao/tao/remotebusiness/login/LoginContext;->sid:Ljava/lang/String;

    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmtopsdk/mtop/intf/Mtop;->getMultiAccountSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    iget-object v4, v0, Lcom/taobao/tao/remotebusiness/login/LoginContext;->sid:Ljava/lang/String;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/login/LoginContext;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lmtopsdk/mtop/intf/Mtop;->registerMultiAccountSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/Mtop;

    .line 182
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " [updateXStateSessionInfo] invoked."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [updateXStateSessionInfo] error."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 111
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->getKey(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    const-string v2, "mtopsdk.LoginHandler"

    if-eqz v1, :cond_0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [handleMessage]The MtopBusiness LoginHandler receive message ."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const v1, 0xde700

    const-string v3, "SESSION"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 151
    :pswitch_0
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[handleMessage]onReceive: NOTIFY_LOGIN_TIMEOUT."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/taobao/tao/remotebusiness/login/RemoteLogin;->isSessionValid(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 155
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Session valid, Broadcast may missed!"

    .line 156
    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_2
    invoke-direct {p0, v0}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->updateXStateSessionInfo(Ljava/lang/String;)V

    .line 159
    invoke-static {v3}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/taobao/tao/remotebusiness/RequestPool;->retryAllRequest(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    :pswitch_1
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[handleMessage]onReceive: NOTIFY_LOGIN_CANCEL."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_3
    invoke-static {v3}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    const-string v3, "ANDROID_SYS_LOGIN_CANCEL"

    const-string v4, "\u767b\u5f55\u88ab\u53d6\u6d88"

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/taobao/tao/remotebusiness/RequestPool;->failAllRequest(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->removeMessages(I)V

    goto :goto_0

    .line 129
    :pswitch_2
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[handleMessage]onReceive: NOTIFY_LOGIN_FAILED."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    invoke-static {v3}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    const-string v3, "ANDROID_SYS_LOGIN_FAIL"

    const-string v4, "\u767b\u5f55\u5931\u8d25"

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/taobao/tao/remotebusiness/RequestPool;->failAllRequest(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->removeMessages(I)V

    goto :goto_0

    .line 119
    :pswitch_3
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " [handleMessage]onReceive: NOTIFY_LOGIN_SUCCESS."

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_5
    invoke-direct {p0, v0}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->updateXStateSessionInfo(Ljava/lang/String;)V

    .line 123
    invoke-static {v3}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object p1

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->userInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/taobao/tao/remotebusiness/RequestPool;->retryAllRequest(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->removeMessages(I)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xde6fd
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLoginCancel()V
    .locals 1

    const v0, 0xde6ff

    .line 215
    invoke-virtual {p0, v0}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onLoginFail()V
    .locals 1

    const v0, 0xde6fe

    .line 210
    invoke-virtual {p0, v0}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onLoginSuccess()V
    .locals 1

    const v0, 0xde6fd

    .line 205
    invoke-virtual {p0, v0}, Lcom/taobao/tao/remotebusiness/login/LoginHandler;->sendEmptyMessage(I)Z

    return-void
.end method
