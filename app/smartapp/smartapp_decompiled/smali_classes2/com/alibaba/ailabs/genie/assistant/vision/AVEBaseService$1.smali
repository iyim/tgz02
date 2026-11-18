.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$1;
.super Landroid/content/BroadcastReceiver;
.source "AVEBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 143
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 146
    :cond_0
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->access$102(Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onScreenChanged(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
