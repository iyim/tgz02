.class Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;
.super Ljava/lang/Object;
.source "DefaultLoginImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;->login(Lcom/taobao/tao/remotebusiness/login/onLoginListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;

.field final synthetic val$sessionInvalidEvent:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;

.field final synthetic val$uploadStats:Lmtopsdk/mtop/stat/IUploadStats;


# direct methods
.method constructor <init>(Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;Lmtopsdk/mtop/stat/IUploadStats;Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->this$0:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;

    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    iput-object p3, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$sessionInvalidEvent:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "mtopsdk.DefaultLoginImpl"

    .line 199
    :try_start_0
    invoke-static {}, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "appBackGround"

    const-string v3, "processName"

    const-string v4, "S_STATUS"

    const-string v5, "msgCode"

    const-string v6, "apiV"

    const-string v7, "apiName"

    const-string v8, "long_nick"

    if-eqz v1, :cond_1

    .line 200
    :try_start_1
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 201
    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-interface {v12, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-interface {v12, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-eqz v1, :cond_0

    .line 210
    iget-object v9, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    const-string v10, "mtoprb"

    const-string v11, "SessionInvalid"

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v9 .. v14}, Lmtopsdk/mtop/stat/IUploadStats;->onRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 213
    :cond_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "onRegister called. module=mtoprb,monitorPoint=SessionInvalid"

    .line 214
    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 219
    iget-object v9, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$sessionInvalidEvent:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;

    iget-object v9, v9, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->long_nick:Ljava/lang/String;

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v8, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$sessionInvalidEvent:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;

    iget-object v8, v8, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->apiName:Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v7, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$sessionInvalidEvent:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;

    iget-object v7, v7, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->v:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v6, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$sessionInvalidEvent:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;

    iget-object v6, v6, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->msgCode:Ljava/lang/String;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v5, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$sessionInvalidEvent:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;

    iget-object v5, v5, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->S_STATUS:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$sessionInvalidEvent:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;

    iget-object v4, v4, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->processName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$sessionInvalidEvent:Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;

    iget-boolean v3, v3, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$SessionInvalidEvent;->appBackGround:Z

    if-eqz v3, :cond_2

    const-string v3, "1"

    goto :goto_0

    :cond_2
    const-string v3, "0"

    :goto_0
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-eqz v2, :cond_3

    .line 228
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/login/DefaultLoginImpl$2;->val$uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    const-string v3, "mtoprb"

    const-string v4, "SessionInvalid"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v1, v5}, Lmtopsdk/mtop/stat/IUploadStats;->onCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "upload  SessionInvalid Stats error."

    .line 231
    invoke-static {v0, v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method
