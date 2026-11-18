.class Lcom/alibaba/ailabs/genie/genieui/GenieUiController$10;
.super Ljava/lang/Object;
.source "GenieUiController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$10;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 954
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 969
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$10;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$1000(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)V

    goto :goto_0

    :cond_1
    const-string p1, "GenieUiController"

    const-string v0, "message_hide_genie_ball false"

    .line 956
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentPager = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$10;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$800(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$10;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$800(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->getCurrentPage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/AppUtils;->isListenMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "message_hide_genie_ball_listen_mode"

    .line 960
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$10;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$900(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;Z)V

    goto :goto_0

    .line 964
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/GenieUiController$10;->this$0:Lcom/alibaba/ailabs/genie/genieui/GenieUiController;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/genieui/GenieUiController;->access$900(Lcom/alibaba/ailabs/genie/genieui/GenieUiController;Z)V

    :cond_3
    :goto_0
    return v1
.end method
