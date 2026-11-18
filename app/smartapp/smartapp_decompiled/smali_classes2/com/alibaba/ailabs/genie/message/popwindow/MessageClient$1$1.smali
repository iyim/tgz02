.class Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;->onMessage(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;

.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;ILjava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;->this$1:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;

    iput p2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;->val$type:I

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;->val$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;->val$type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;->this$1:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;->val$payload:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$000(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;->this$1:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$1$1;->val$payload:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$100(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
