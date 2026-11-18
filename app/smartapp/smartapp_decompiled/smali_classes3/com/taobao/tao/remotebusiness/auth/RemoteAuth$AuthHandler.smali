.class Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;
.super Ljava/lang/Object;
.source "RemoteAuth.java"

# interfaces
.implements Lcom/taobao/tao/remotebusiness/auth/AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/remotebusiness/auth/RemoteAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthHandler"
.end annotation


# instance fields
.field private authParam:Lcom/taobao/tao/remotebusiness/auth/AuthParam;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mtopInstance:Lmtopsdk/mtop/intf/Mtop;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/intf/Mtop;Lcom/taobao/tao/remotebusiness/auth/AuthParam;)V
    .locals 0
    .param p1    # Lmtopsdk/mtop/intf/Mtop;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/taobao/tao/remotebusiness/auth/AuthParam;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    .line 192
    iput-object p2, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->authParam:Lcom/taobao/tao/remotebusiness/auth/AuthParam;

    return-void
.end method


# virtual methods
.method public onAuthCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->authParam:Lcom/taobao/tao/remotebusiness/auth/AuthParam;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->openAppKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->authParam:Lcom/taobao/tao/remotebusiness/auth/AuthParam;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->openAppKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "DEFAULT_AUTH"

    .line 227
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[onAuthCancel] auth cancel,key="

    .line 229
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v2}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",code="

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtopsdk.RemoteAuth"

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "AUTH"

    .line 233
    invoke-static {v1}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/taobao/tao/remotebusiness/RequestPool;->failAllRequest(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->authParam:Lcom/taobao/tao/remotebusiness/auth/AuthParam;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->openAppKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->authParam:Lcom/taobao/tao/remotebusiness/auth/AuthParam;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->openAppKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "DEFAULT_AUTH"

    .line 213
    :goto_0
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[onAuthFail] auth fail,key="

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v2}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",code="

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtopsdk.RemoteAuth"

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "AUTH"

    .line 220
    invoke-static {v1}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v1, v2, v0, p1, p2}, Lcom/taobao/tao/remotebusiness/RequestPool;->failAllRequest(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthSuccess()V
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->authParam:Lcom/taobao/tao/remotebusiness/auth/AuthParam;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->openAppKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->authParam:Lcom/taobao/tao/remotebusiness/auth/AuthParam;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/auth/AuthParam;->openAppKey:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "DEFAULT_AUTH"

    .line 200
    :goto_0
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v1}, Lmtopsdk/mtop/intf/Mtop;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lmtopsdk/common/util/StringUtils;->concatStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->authParam:Lcom/taobao/tao/remotebusiness/auth/AuthParam;

    invoke-static {v2, v3}, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth;->getAuthToken(Lmtopsdk/mtop/intf/Mtop;Lcom/taobao/tao/remotebusiness/auth/AuthParam;)Ljava/lang/String;

    move-result-object v2

    .line 202
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auth success.authToken="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mtopsdk.RemoteAuth"

    invoke-static {v4, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "accessToken"

    .line 205
    invoke-static {v1, v3, v2}, Lmtopsdk/xstate/XState;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "AUTH"

    .line 206
    invoke-static {v1}, Lcom/taobao/tao/remotebusiness/RequestPoolManager;->getPool(Ljava/lang/String;)Lcom/taobao/tao/remotebusiness/RequestPool;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/auth/RemoteAuth$AuthHandler;->mtopInstance:Lmtopsdk/mtop/intf/Mtop;

    invoke-virtual {v1, v2, v0}, Lcom/taobao/tao/remotebusiness/RequestPool;->retryAllRequest(Lmtopsdk/mtop/intf/Mtop;Ljava/lang/String;)V

    return-void
.end method
