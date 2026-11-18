.class Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1$1;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;

.field final synthetic val$clearMessageDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1$1;->this$2:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1$1;->val$clearMessageDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 300
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 301
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$8$1$1;->val$clearMessageDialog:Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/ui/dialog/ClearMessageDialog;->cancel()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
