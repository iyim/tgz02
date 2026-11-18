.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5$1;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;->onResult(ILjava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;

.field final synthetic val$result:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;Ljava/lang/Boolean;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5$1;->val$result:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5$1;->val$result:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$1300(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u53d6\u6d88\u8ba2\u9605\u6210\u529f"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$5;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$1300(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "\u53d6\u6d88\u8ba2\u9605\u5931\u8d25"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method
