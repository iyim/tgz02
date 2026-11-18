.class Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3$1;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->onResult(ILjava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessageUnReadNumber"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/message/utils/MessageBroadCastUtils;->sendMessageCenterBroadCast(Landroid/content/Context;I)V

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/MessageListFragment;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;->onRedChangeListener(I)V

    return-void
.end method
