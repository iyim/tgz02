.class public abstract Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;
.super Lcom/alibaba/ailabs/ipc/ICommu$Stub;
.source "GCSBaseCallback.java"


# static fields
.field private static final mHandler:Landroid/os/Handler;


# instance fields
.field private mIsUiThread:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->mHandler:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->mIsUiThread:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;-><init>()V

    .line 21
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->mIsUiThread:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;ILandroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->onResponse(ILandroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private onResponse(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string p1, "e"

    const-string v0, ""

    .line 53
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 55
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->onSucceed(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 58
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 36
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->mIsUiThread:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 37
    sget-object v0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback$1;-><init>(Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->onResponse(ILandroid/os/Bundle;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract onFailed(Ljava/lang/String;)V
.end method

.method public abstract onSucceed(Landroid/os/Bundle;)V
.end method

.method public setIsUiThread(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;->mIsUiThread:Z

    return-void
.end method
