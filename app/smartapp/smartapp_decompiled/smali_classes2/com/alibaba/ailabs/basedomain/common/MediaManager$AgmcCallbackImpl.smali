.class Lcom/alibaba/ailabs/basedomain/common/MediaManager$AgmcCallbackImpl;
.super Ljava/lang/Object;
.source "MediaManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/common/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AgmcCallbackImpl"
.end annotation


# instance fields
.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/basedomain/common/MediaManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/common/MediaManager;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$AgmcCallbackImpl;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onEvent(ILandroid/os/Bundle;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/common/MediaManager$AgmcCallbackImpl;->ref:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    if-eqz v0, :cond_1

    .line 123
    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->access$600(Lcom/alibaba/ailabs/basedomain/common/MediaManager;ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onException(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onReboot(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
