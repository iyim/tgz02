.class public Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;
.super Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;
.source "MixRemoteChannel.java"


# static fields
.field static volatile isDegrade:Z = false


# instance fields
.field private final mDefaultRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

.field private final mQuickRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;-><init>()V

    .line 27
    new-instance v0, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;

    invoke-direct {v0, p1}, Lcom/taobao/aranger/core/ipc/channel/DefaultRemoteChannel;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mDefaultRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    .line 28
    new-instance v0, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;

    invoke-direct {v0, p1}, Lcom/taobao/aranger/core/ipc/channel/QuickRemoteChannel;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mQuickRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    return-void
.end method


# virtual methods
.method public internalConnect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 53
    sget-boolean v0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->isDegrade:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mDefaultRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {v0}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalConnect()V

    goto :goto_1

    .line 57
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mQuickRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {v0}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalConnect()V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Lcom/taobao/aranger/exception/IPCException;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/16 v3, 0x13

    if-ne v1, v3, :cond_1

    .line 61
    sput-boolean v2, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->isDegrade:Z

    goto :goto_0

    .line 66
    :cond_1
    throw v0

    .line 63
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mDefaultRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {v0}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalConnect()V

    :goto_1
    return-void
.end method

.method public internalRecycle(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 74
    sget-boolean v0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->isDegrade:Z

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mDefaultRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalRecycle(Ljava/util/List;)V

    goto :goto_1

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mQuickRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalRecycle(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Lcom/taobao/aranger/exception/IPCException;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/16 v3, 0x13

    if-ne v1, v3, :cond_1

    .line 82
    sput-boolean v2, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->isDegrade:Z

    goto :goto_0

    .line 87
    :cond_1
    throw v0

    .line 84
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mDefaultRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalRecycle(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method public internalSendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 33
    sget-boolean v0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->isDegrade:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mDefaultRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalSendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mQuickRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalSendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1
    :try_end_0
    .catch Lcom/taobao/aranger/exception/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 39
    invoke-virtual {v0}, Lcom/taobao/aranger/exception/IPCException;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/16 v3, 0x13

    if-ne v1, v3, :cond_1

    .line 41
    sput-boolean v2, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->isDegrade:Z

    goto :goto_0

    .line 45
    :cond_1
    throw v0

    .line 43
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taobao/aranger/core/ipc/channel/MixRemoteChannel;->mDefaultRemoteChannel:Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;

    invoke-virtual {v0, p1}, Lcom/taobao/aranger/core/ipc/channel/BaseRemoteChannel;->internalSendCall(Lcom/taobao/aranger/core/entity/Call;)Lcom/taobao/aranger/core/entity/Reply;

    move-result-object p1

    return-object p1
.end method
