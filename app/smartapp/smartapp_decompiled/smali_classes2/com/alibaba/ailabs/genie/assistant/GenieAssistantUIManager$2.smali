.class Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;
.super Landroid/os/Handler;
.source "GenieAssistantUIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Landroid/os/Looper;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 248
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "GenieAssistantUIManager"

    const/16 v2, 0x2711

    if-eq v0, v2, :cond_0

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage. what:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->messageDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x3e8

    if-eq v0, v2, :cond_6

    const/16 v2, 0x271b

    const/4 v5, 0x0

    if-eq v0, v2, :cond_5

    const/16 v2, 0x271d

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 280
    :pswitch_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1, v5}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$602(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Z)Z

    .line 281
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$700(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    move-result-object p1

    const/4 v0, 0x7

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->changeStatus(ILjava/lang/String;)V

    .line 283
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1, v5}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$202(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;Z)Z

    .line 284
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$800(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 285
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$800(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;

    move-result-object p1

    const-string v0, "start"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/vision/AVEBaseService;->onCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$500(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isShowing()Z

    move-result p1

    const/16 v0, 0x2716

    if-nez p1, :cond_1

    .line 264
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$500(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->showBindUI(Ljava/lang/String;)V

    const-wide/16 v1, 0x7d0

    .line 265
    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->removeMessages(I)V

    goto :goto_0

    .line 258
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_2

    const/4 v5, 0x1

    :cond_2
    invoke-virtual {v0, v5}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->hideUi(Z)V

    goto :goto_0

    .line 292
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage. call statue update:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$900(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$900(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)I

    move-result p1

    if-eqz p1, :cond_7

    .line 294
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$500(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.rtc"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 295
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1, v5}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$902(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;I)I

    .line 296
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$900(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)I

    move-result p1

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->updateCallStatus(I)V

    goto :goto_0

    .line 298
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$400(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 289
    :cond_5
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->getInstace()Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/alibaba/ailabs/genie/assistant/Utils/ScreenWakeManager;->setScreenAlwaysOn(Z)V

    goto :goto_0

    .line 254
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$300(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Z

    .line 255
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;->access$400(Lcom/alibaba/ailabs/genie/assistant/GenieAssistantUIManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2714
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
