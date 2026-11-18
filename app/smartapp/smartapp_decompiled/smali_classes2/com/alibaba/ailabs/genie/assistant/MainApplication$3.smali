.class Lcom/alibaba/ailabs/genie/assistant/MainApplication$3;
.super Landroid/content/BroadcastReceiver;
.source "MainApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/MainApplication;->getVolumeReceiver()Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/MainApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/MainApplication;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/MainApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 375
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    .line 377
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 379
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 380
    new-instance p2, Lcom/alibaba/ailabs/geniesdk/record/StopWakeInfo;

    invoke-direct {p2}, Lcom/alibaba/ailabs/geniesdk/record/StopWakeInfo;-><init>()V

    const/16 v0, 0x10

    .line 381
    iput v0, p2, Lcom/alibaba/ailabs/geniesdk/record/StopWakeInfo;->type:I

    .line 382
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/MainApplication;

    iget v0, v0, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mCurrentLevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x7

    const-string v2, "MainApplication"

    if-le p1, v0, :cond_0

    :try_start_1
    const-string v0, "volumeup"

    .line 383
    iput-object v0, p2, Lcom/alibaba/ailabs/geniesdk/record/StopWakeInfo;->stopReason:Ljava/lang/String;

    const-string v0, " stopTalk with volume up"

    .line 384
    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->stopTalk(ILcom/alibaba/ailabs/geniesdk/record/StopWakeInfo;)V

    goto :goto_0

    :cond_0
    const-string v0, "volumedown"

    .line 387
    iput-object v0, p2, Lcom/alibaba/ailabs/geniesdk/record/StopWakeInfo;->stopReason:Ljava/lang/String;

    .line 388
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->stopTalk(ILcom/alibaba/ailabs/geniesdk/record/StopWakeInfo;)V

    const-string p2, " stopTalk with volume down"

    .line 389
    invoke-static {v2, p2}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :goto_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/MainApplication$3;->this$0:Lcom/alibaba/ailabs/genie/assistant/MainApplication;

    iput p1, p2, Lcom/alibaba/ailabs/genie/assistant/MainApplication;->mCurrentLevel:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
