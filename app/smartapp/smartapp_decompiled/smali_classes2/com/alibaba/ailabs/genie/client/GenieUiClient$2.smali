.class Lcom/alibaba/ailabs/genie/client/GenieUiClient$2;
.super Ljava/lang/Object;
.source "GenieUiClient.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/client/GenieUiClient;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/client/GenieUiClient;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$2;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2718

    if-eq v0, v1, :cond_2

    const/16 v1, 0x271c

    const-string v2, "animationType"

    if-eq v0, v1, :cond_1

    const/16 v1, 0x271d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$2;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mCallback:Lcom/alibaba/ailabs/genie/client/data/GestureCallback;

    if-eqz v0, :cond_3

    .line 104
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$2;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mCallback:Lcom/alibaba/ailabs/genie/client/data/GestureCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/GestureCallback;->onComplete(I)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$2;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mCallback:Lcom/alibaba/ailabs/genie/client/data/GestureCallback;

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$2;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->mCallback:Lcom/alibaba/ailabs/genie/client/data/GestureCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/client/data/GestureCallback;->onStart(I)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/client/GenieUiClient$2;->this$0:Lcom/alibaba/ailabs/genie/client/GenieUiClient;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/client/GenieUiClient;->access$800(Lcom/alibaba/ailabs/genie/client/GenieUiClient;Ljava/lang/String;)V

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
