.class public Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;
.super Ljava/lang/Object;
.source "VerifyIdentityTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
    }
.end annotation


# static fields
.field public static TASK_TIMEOUT:J = 0x2710L


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field public bizId:Ljava/lang/String;

.field public bizRequestData:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field public canNotUseRpcChannel:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

.field public entryModuleData:Ljava/lang/String;

.field public entryModuleName:Ljava/lang/String;

.field private f:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

.field private g:J

.field public gwUrl:Ljava/lang/String;

.field private h:Landroid/os/Bundle;

.field private i:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

.field public initRpcEndTime:J

.field public initRpcStartTime:J

.field public isDynamicMode:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

.field private l:Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;

.field private m:Z

.field public mTaskStartTime:J

.field public needReportEnvInfo:Z

.field public sceneId:Ljava/lang/String;

.field public showEngineError:Z

.field public taskPrepareEndTime:J

.field public taskPrepareStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->a:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;->WAIT:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->f:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->g:J

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->needReportEnvInfo:Z

    const-wide/16 v0, -0x1

    .line 131
    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->taskPrepareStartTime:J

    .line 137
    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->taskPrepareEndTime:J

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcStartTime:J

    .line 151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->initRpcEndTime:J

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->mTaskStartTime:J

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    .line 160
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->m:Z

    .line 162
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->canNotUseRpcChannel:Z

    .line 164
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

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


# virtual methods
.method public getBizName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getCompatibleVerifyType()Ljava/lang/String;
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->i:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->VERIFYID:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 319
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->i:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->TOKEN:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    .line 320
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->i:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_INIT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "verify_init"

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->i:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->FAST_DIRECT:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/common/VerifyType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "verify_module"

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_3
    :goto_1
    const-string v0, "standard"

    return-object v0
.end method

.method public getEntryModuleData()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->entryModuleData:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryModuleName()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->entryModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtParams()Landroid/os/Bundle;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public getListener()Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->e:Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    return-object v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginOrProxyMode()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->m:Z

    return v0
.end method

.method public getTaskCreateTime()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->g:J

    return-wide v0
.end method

.method public declared-synchronized getTaskStatus()Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
    .locals 1

    monitor-enter p0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->f:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVIMessageChannel()Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->l:Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;

    return-object v0
.end method

.method public getVerifyId()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyType()Lcom/alipay/mobile/verifyidentity/common/VerifyType;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->i:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    return-object v0
.end method

.method public getVidListener()Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->k:Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    return-object v0
.end method

.method public isInitTaskTimeOut()Z
    .locals 5

    .line 304
    iget-wide v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->taskPrepareEndTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->taskPrepareStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x9c40

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBizName(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->d:Ljava/lang/String;

    return-void
.end method

.method public setEntryModuleData(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->entryModuleData:Ljava/lang/String;

    return-void
.end method

.method public setEntryModuleName(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->entryModuleName:Ljava/lang/String;

    return-void
.end method

.method public setExtParams(Landroid/os/Bundle;)V
    .locals 3

    .line 215
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->h:Landroid/os/Bundle;

    .line 216
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->h:Landroid/os/Bundle;

    if-eqz p1, :cond_4

    const-string v0, "gwUrl"

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5916\u90e8\u6ce8\u5165\u4e86\u7f51\u5173: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->gwUrl:Ljava/lang/String;

    .line 222
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->h:Landroid/os/Bundle;

    const-string v0, "VIE_envType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->setEnvType(Ljava/lang/String;)V

    .line 226
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->h:Landroid/os/Bundle;

    const-string v0, "VIE_useBird"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Y"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 227
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 229
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->isDynamicMode:Z

    .line 231
    :goto_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->h:Landroid/os/Bundle;

    const-string v1, "isPluginMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 232
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->a:Ljava/lang/String;

    const-string v1, "\u672c\u6b21\u6821\u9a8c\u4e3a\u63d2\u4ef6\u6a21\u5f0f"

    invoke-static {p1, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->m:Z

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->h:Landroid/os/Bundle;

    const-string v0, "showEngineError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 236
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->h:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    .line 237
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showEngineError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->showEngineError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public setListener(Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->e:Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->c:Ljava/lang/String;

    return-void
.end method

.method public setTaskCreateTime(J)V
    .locals 0

    .line 207
    iput-wide p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->g:J

    return-void
.end method

.method public declared-synchronized setTaskStatus(Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;)V
    .locals 0

    monitor-enter p0

    .line 199
    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->f:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask$TaskStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->b:Ljava/lang/String;

    return-void
.end method

.method public setVIMessageChannel(Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->l:Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannel;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->m:Z

    :cond_0
    return-void
.end method

.method public setVerifyId(Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->j:Ljava/lang/String;

    return-void
.end method

.method public setVerifyType(Lcom/alipay/mobile/verifyidentity/common/VerifyType;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->i:Lcom/alipay/mobile/verifyidentity/common/VerifyType;

    return-void
.end method

.method public setVidListener(Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->k:Lcom/alipay/mobile/verifyidentity/callback/VIListenerByVerifyId;

    return-void
.end method
