.class public Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.super Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;
.source "CommuSvr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/ipc/remote/CommuSvr$CommuStub;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CommuSvr"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->mVersion:I

    .line 32
    new-instance p1, Lcom/alibaba/ailabs/ipc/remote/CommuSvr$CommuStub;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr$CommuStub;-><init>(Lcom/alibaba/ailabs/ipc/remote/CommuSvr;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;-><init>(Landroid/content/Context;)V

    .line 25
    iput p2, p0, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->mVersion:I

    .line 26
    new-instance p1, Lcom/alibaba/ailabs/ipc/remote/CommuSvr$CommuStub;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr$CommuStub;-><init>(Lcom/alibaba/ailabs/ipc/remote/CommuSvr;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCustomCommu: no process, method = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "data = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommuSvr"

    .line 78
    invoke-static {p2, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 80
    nop

    nop

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
