.class Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    new-instance v0, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 293
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;->setCanceledOnTouchOutside(Z)V

    .line 294
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;->show()V

    .line 295
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1$1;-><init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 306
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
