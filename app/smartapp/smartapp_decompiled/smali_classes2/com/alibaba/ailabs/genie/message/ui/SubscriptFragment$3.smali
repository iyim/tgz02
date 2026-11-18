.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$3;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/ui/adapter/ISubscriptNetWorkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->setConfig(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$900(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    return-void
.end method

.method public unSubscribe(Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$3;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$1000(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;Lcom/alibaba/ailabs/genie/message/network/bean/SubscribeInfo;)V

    return-void
.end method
