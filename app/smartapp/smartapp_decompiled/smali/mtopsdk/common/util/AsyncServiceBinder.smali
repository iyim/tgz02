.class public abstract Lmtopsdk/common/util/AsyncServiceBinder;
.super Ljava/lang/Object;
.source "AsyncServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "mtopsdk.AsyncServiceBinder"


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field interfaceCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field interfaceName:Ljava/lang/String;

.field final lock:[B

.field volatile mBindFailed:Z

.field volatile mBinding:Z

.field protected volatile service:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field serviceCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/IInterface;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    const/4 v0, 0x0

    .line 27
    new-array v1, v0, [B

    iput-object v1, p0, Lmtopsdk/common/util/AsyncServiceBinder;->lock:[B

    .line 31
    iput-boolean v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBindFailed:Z

    .line 35
    iput-boolean v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBinding:Z

    .line 38
    new-instance v0, Lmtopsdk/common/util/AsyncServiceBinder$1;

    invoke-direct {v0, p0}, Lmtopsdk/common/util/AsyncServiceBinder$1;-><init>(Lmtopsdk/common/util/AsyncServiceBinder;)V

    iput-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->conn:Landroid/content/ServiceConnection;

    .line 94
    iput-object p1, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceCls:Ljava/lang/Class;

    .line 95
    iput-object p2, p0, Lmtopsdk/common/util/AsyncServiceBinder;->serviceCls:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected abstract afterAsyncBind()V
.end method

.method public asyncBind(Landroid/content/Context;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .line 100
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 107
    :cond_1
    iget-boolean v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBindFailed:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBinding:Z

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 110
    :cond_2
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    const-string v1, "mtopsdk.AsyncServiceBinder"

    if-eqz v0, :cond_3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[asyncBind] mContext="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mBindFailed= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBindFailed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mBinding="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBinding:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBinding:Z

    const/4 v2, 0x0

    .line 115
    :try_start_0
    iget-object v3, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 116
    iget-object v3, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceCls:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceName:Ljava/lang/String;

    .line 118
    :cond_4
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[asyncBind]try to bind service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lmtopsdk/common/util/AsyncServiceBinder;->serviceCls:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    iget-object v4, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceCls:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.DEFAULT"

    .line 124
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v4, p0, Lmtopsdk/common/util/AsyncServiceBinder;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v3, v4, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    .line 126
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[asyncBind]use intent bind service ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for interfaceName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-nez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 129
    :goto_0
    iput-boolean p1, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBindFailed:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 131
    iput-boolean v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBindFailed:Z

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[asyncBind] use intent bind service failed. mBindFailed="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBindFailed:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",interfaceName = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmtopsdk/common/util/AsyncServiceBinder;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    :goto_1
    iget-boolean p1, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBindFailed:Z

    if-eqz p1, :cond_8

    .line 136
    iput-boolean v2, p0, Lmtopsdk/common/util/AsyncServiceBinder;->mBinding:Z

    :cond_8
    :goto_2
    return-void
.end method

.method public getService()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lmtopsdk/common/util/AsyncServiceBinder;->service:Landroid/os/IInterface;

    return-object v0
.end method
