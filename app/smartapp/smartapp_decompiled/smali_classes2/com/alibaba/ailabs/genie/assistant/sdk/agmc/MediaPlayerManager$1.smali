.class Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager$1;
.super Ljava/lang/Object;
.source "MediaPlayerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->access$100(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;)Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->callStringMethod(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->access$202(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;Ljava/lang/String;)Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;->access$100(Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerManager;)Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/MediaPlayerCallback;->onReboot()V

    return-void
.end method
