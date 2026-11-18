.class Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/callback/AgmcPlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;
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
            "Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvent event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseService"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;->ref:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->onPlayerEvent(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onException(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;Landroid/os/Bundle;)V
    .locals 1

    const-string p1, "BaseService"

    const-string p2, "onException"

    .line 103
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;->ref:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    .line 109
    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mIsException:Z

    const/4 p2, 0x5

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->onPlayerEvent(ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onReboot(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "BaseService"

    const-string p2, "onReboot"

    .line 116
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService$AgmcCallbackImpl;->ref:Ljava/lang/ref/WeakReference;

    if-nez p1, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;

    if-eqz p1, :cond_1

    .line 122
    sget-object p2, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->mAgmcPlayer:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/IAgmcPlayer;

    if-eqz p2, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/BaseService;->onRefresh()V

    :cond_1
    return-void
.end method
