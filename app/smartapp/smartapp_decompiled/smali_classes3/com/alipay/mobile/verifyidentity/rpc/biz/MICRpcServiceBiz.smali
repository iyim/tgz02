.class public Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;
.super Ljava/lang/Object;
.source "MICRpcServiceBiz.java"


# static fields
.field private static final a:Ljava/lang/String; = "MICRpcServiceBiz"

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private c:Ljava/lang/Object;

.field private d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 3

    .line 163
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "viRpcRequest"

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance p2, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;

    invoke-direct {p2, p0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;-><init>(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)V

    invoke-interface {p1, v0, p2}, Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;->onAction(Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannelCallback;)V

    .line 183
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 185
    :try_start_0
    sget-object p2, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string v0, "Start to wait for the result from RpcProxy."

    invoke-static {p2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p2, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    .line 188
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waiting is interrupted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    sget-object p1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string p2, "RpcProxy Result is here."

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    if-eqz p1, :cond_1

    .line 193
    iget-object p1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 195
    :cond_0
    sget-object p2, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rpc\u4ee3\u7406\u6a21\u5f0f\u51fa\u73b0 channelError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 198
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 202
    :catch_1
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    const/4 p2, 0x0

    .line 206
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    return-object p1

    .line 190
    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/rpc/RpcException;)V
    .locals 8

    .line 298
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "extype"

    const-string v1, "vi_rpc_error"

    .line 299
    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "exinfo"

    .line 300
    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string v1, "AS-EXCEPTION-161206-01"

    const-string v2, "20000666"

    const-string v3, "visdk"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 304
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string v1, "logBehavior Exception"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->viRpcExceptionAdapter(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lcom/alipay/mobile/verifyidentity/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 223
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a(Lcom/alipay/mobile/verifyidentity/rpc/RpcException;)V

    .line 225
    sget-object p2, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    throw p1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->d:Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    return-object p1
.end method

.method public static getIsSendRpc()Z
    .locals 1

    .line 216
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 13

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 50
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 51
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->module:Ljava/lang/String;

    const-string v1, "module"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "operationType"

    const-string v1, "alipay.mobile.ic.dispatch"

    .line 52
    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->action:Ljava/lang/String;

    const-string v1, "action"

    invoke-interface {v9, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v10, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    .line 55
    iget-object v11, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    .line 58
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v12, 0x0

    if-eqz v0, :cond_1

    .line 63
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->bizRequestData:Ljava/lang/String;

    iput-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->bizRequestData:Ljava/lang/String;

    .line 64
    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->needReportEnvInfo:Z

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/info/EnvInfoUtil;->getEnvInfo()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->envData:Ljava/lang/String;

    .line 67
    iput-boolean v12, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->needReportEnvInfo:Z

    goto :goto_0

    .line 69
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string v2, "no need to report envinfo again"

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_0
    iget-object v1, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->gwUrl:Ljava/lang/String;

    .line 73
    :cond_1
    iget-object v2, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->token:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;->verifyId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v9}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcSendLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 75
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v3

    invoke-interface {v3, v2, p1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->sendRpc(Ljava/lang/Long;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVIMessageChannel()Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->canNotUseRpcChannel:Z

    if-nez v3, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getVIMessageChannel()Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a(Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 80
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "channelError"

    .line 81
    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 84
    :cond_2
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->dispatch(Lcom/alipay/mobileic/core/model/rpc/MICRpcRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1

    .line 86
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v0

    invoke-interface {v0, v2, p1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->gotRpcResult(Ljava/lang/Long;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    move-object v3, v11

    move-wide v4, v7

    move-object v6, v9

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 88
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v10

    move-object v3, v11

    move-wide v4, v7

    move-object v6, v9

    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 92
    throw p1
.end method

.method public initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    .locals 12

    const-string v0, ""

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 105
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 106
    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->sceneId:Ljava/lang/String;

    const-string v2, "sceneId"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;->bizId:Ljava/lang/String;

    const-string v2, "bizId"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "operationType"

    const-string v2, "alipay.mobile.ic.init.outer"

    .line 108
    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, v1, v1, v10}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcSendLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->getCurrentTask()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v1, v2, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->gwUrl:Ljava/lang/String;

    .line 116
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 117
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v3

    invoke-interface {v3, v2, p1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->sendRpc(Ljava/lang/Long;Ljava/lang/Object;)V

    .line 118
    new-instance v3, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->initVerifyTask(Lcom/alipay/mobileic/core/model/rpc/MICInitRequest;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    move-result-object p1

    .line 119
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/DebugViewer;->getInstance()Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Lcom/alipay/mobile/verifyidentity/log/BaseDebugViewer;->gotRpcResult(Ljava/lang/Long;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)V

    if-eqz p1, :cond_1

    .line 122
    iget-object v1, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->token:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    :try_start_1
    iget-object v0, p1, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v11, v0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v4, v0

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v11, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v11

    move-wide v5, v8

    move-object v7, v10

    .line 125
    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 126
    sget-object v1, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    move-object v3, v0

    move-object v4, v11

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-wide v5, v8

    move-object v7, v10

    .line 129
    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 130
    throw p1
.end method

.method public prodmng(Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;)Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;
    .locals 2

    .line 148
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->prodmng(Lcom/alipay/mobileic/core/model/rpc/MICProdmngRequest;)Lcom/alipay/mobileic/core/model/rpc/MICProdmngResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->viRpcExceptionAdapter(Ljava/lang/Exception;)V

    .line 152
    throw p1
.end method

.method public report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;
    .locals 2

    .line 137
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBizBase;->report(Lcom/alipay/mobileic/core/model/rpc/MICReportRequest;)Lcom/alipay/mobileic/core/model/rpc/MICReportResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->viRpcExceptionAdapter(Ljava/lang/Exception;)V

    .line 141
    throw p1
.end method

.method public viRpcExceptionAdapter(Ljava/lang/Exception;)V
    .locals 3

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RpcException"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    const-string v1, "\u51fa\u73b0RPC\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "getCode"

    .line 239
    invoke-static {p1, v2, v1, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string v2, "getOperationType"

    .line 244
    invoke-static {p1, v2, v1, v1}, Lcom/alipay/mobile/verifyidentity/utils/ReflectUtils;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 245
    new-instance v2, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/Throwable;)V

    .line 246
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/verifyidentity/rpc/RpcException;->setOperationType(Ljava/lang/String;)V

    .line 247
    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public writeRpcBackLog(Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-wide/from16 v1, p4

    if-nez p6, :cond_0

    .line 271
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p6

    :goto_0
    const-string v4, "rpcSuccess"

    if-eqz v0, :cond_1

    .line 274
    iget-boolean v5, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->success:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    iget-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->sysErrCode:Ljava/lang/String;

    const-string v5, "rpcCode"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    const-string v5, "nextStep"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifyCode:Ljava/lang/String;

    const-string v5, "verifyCode"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-boolean v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->verifySuccess:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "verifySuccess"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->useBird:Ljava/lang/String;

    const-string v5, "useBird"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 281
    iget-object v4, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->channelError:Ljava/lang/String;

    const-string v5, "channelError"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 284
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    :cond_2
    :goto_1
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    const-string v4, "module"

    .line 287
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v13, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v6, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x1

    const-string v7, "UC-MobileIC-160323-2"

    const-string v8, "20000666"

    const-string v9, "hsrpcfh"

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 288
    invoke-static/range {v6 .. v14}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 290
    sget-object v3, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u672c\u6b21RPC\u8017\u65f6["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;->nextStep:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, ""

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\uff1a"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/log/TimeCostLog;->log(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public writeRpcSendLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 258
    sget-object v0, Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;->EVENT:Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;

    const-string v1, "UC-MobileIC-160323-1"

    const-string v2, "20000666"

    const-string v3, "hsrpcqd"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/verifyidentity/log/VerifyBehavorLogger;->logBehavor(Lcom/alipay/mobile/verifyidentity/log/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
