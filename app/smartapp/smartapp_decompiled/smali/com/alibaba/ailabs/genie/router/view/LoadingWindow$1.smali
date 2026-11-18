.class final Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$1;
.super Landroid/content/BroadcastReceiver;
.source "LoadingWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 332
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 333
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receive exit window broadcast; action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GenieAIRouter"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.alibaba.ailabs.genie.smartapp.exit.loadwindow"

    .line 334
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    :try_start_0
    const-string/jumbo p2, "really removeLoadingWindow; from receiver"

    .line 336
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 340
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->removeMessages(I)V

    .line 342
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->sendEmptyMessage(I)Z

    .line 343
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->unRegisterExitWindowBroadcast()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 348
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 349
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method
