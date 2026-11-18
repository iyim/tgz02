.class public Lcom/taobao/android/dinamicx/RemoteLogImpl;
.super Ljava/lang/Object;
.source "RemoteLogImpl.java"

# interfaces
.implements Lcom/taobao/android/dinamic/log/IDinamicRemoteDebugLog;


# instance fields
.field private logService:Lcom/taobao/android/AliLogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/taobao/android/AliLogServiceFetcher;->getLogService()Lcom/taobao/android/AliLogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    return-void
.end method


# virtual methods
.method public logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/android/AliLogInterface;->logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs logd(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->logd(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/android/AliLogInterface;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/android/AliLogInterface;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs loge(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->loge(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->logi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/android/AliLogInterface;->logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs logi(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->logi(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->logv(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/android/AliLogInterface;->logv(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs logv(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->logv(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->logw(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/android/AliLogInterface;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/android/AliLogInterface;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public varargs logw(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/android/dinamicx/RemoteLogImpl;->logService:Lcom/taobao/android/AliLogInterface;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/taobao/android/AliLogInterface;->logw(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
