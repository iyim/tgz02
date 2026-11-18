.class public Lcom/alibaba/ailabs/comm/alive/StartupInfo;
.super Ljava/lang/Object;
.source "StartupInfo.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final BROADCAST:I = 0x1

.field public static final CONTENT_PROVIDER:I = 0x2

.field public static final SERVICE:I


# instance fields
.field private action:Ljava/lang/String;

.field private binder:Landroid/os/IBinder;

.field private listener:Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;

.field private packageName:Ljava/lang/String;

.field private processName:Ljava/lang/String;

.field private retryCount:I

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->packageName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->processName:Ljava/lang/String;

    .line 27
    iput p3, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->type:I

    .line 28
    iput-object p4, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->action:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getListener()Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 143
    invoke-interface {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;->onDied(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 73
    :cond_1
    instance-of v2, p1, Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    if-nez v2, :cond_2

    return v0

    .line 77
    :cond_2
    nop

    nop

    .line 79
    iget v2, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->type:I

    iget v3, p1, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->type:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->packageName:Ljava/lang/String;

    .line 80
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->processName:Ljava/lang/String;

    .line 81
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->action:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->action:Ljava/lang/String;

    .line 82
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getListener()Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->listener:Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->retryCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->type:I

    return v0
.end method

.method public isBinderAlive()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->binder:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public isValid()Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->processName:Ljava/lang/String;

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->action:Ljava/lang/String;

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->type:I

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->action:Ljava/lang/String;

    return-void
.end method

.method public setBinder(Landroid/os/IBinder;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->binder:Landroid/os/IBinder;

    return-void
.end method

.method public setListener(Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->listener:Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->processName:Ljava/lang/String;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->retryCount:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartupInfo{packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", processName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", action=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->action:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
