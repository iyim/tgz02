.class public Lcom/alibaba/ailabs/ipc/bean/BinderDeath;
.super Ljava/lang/Object;
.source "BinderDeath.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;

.field private type:I

.field private userData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;ILjava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->listener:Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;

    .line 30
    iput p2, p0, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->type:I

    .line 31
    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->userData:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->listener:Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;

    if-eqz v0, :cond_0

    .line 21
    :try_start_0
    iget v1, p0, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->type:I

    iget-object v2, p0, Lcom/alibaba/ailabs/ipc/bean/BinderDeath;->userData:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;->onDied(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public linkToDeath(Landroid/os/IBinder;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 37
    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unlinkToDeath(Landroid/os/IBinder;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
