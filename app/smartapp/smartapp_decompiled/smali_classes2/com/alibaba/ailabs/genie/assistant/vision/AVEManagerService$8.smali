.class Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;
.super Ljava/lang/Object;
.source "AVEManagerService.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/event/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/alibaba/ailabs/ipc/event/Event;)V
    .locals 3

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MESSAGE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/event/Event;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p1}, Lcom/alibaba/ailabs/ipc/event/Event;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$200(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$000(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->access$400(Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 285
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.alibaba.ailabs.genie.smartapp/com.alibaba.ailabs.genie.router.view.LoadActivity"

    .line 286
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "10"

    const-string v2, "pauseEngine"

    if-eqz v0, :cond_1

    .line 287
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->notifyAVE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "com.alibaba.ailabs"

    .line 289
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    const-string v0, "3"

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->notifyAVE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "com.alibaba.ailabs.genie.webapps"

    .line 291
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.alipay.arome.app"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 294
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    const-string v0, "6"

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->notifyAVE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService$8;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEManagerService;->notifyAVE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
