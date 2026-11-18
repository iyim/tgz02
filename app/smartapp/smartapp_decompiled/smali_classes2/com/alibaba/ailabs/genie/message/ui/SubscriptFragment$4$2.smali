.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4$2;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->onResult(ILjava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;

.field final synthetic val$finalSubscribeErrorString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4$2;->val$finalSubscribeErrorString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$4$2;->val$finalSubscribeErrorString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$1400(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Ljava/lang/String;)V

    return-void
.end method
