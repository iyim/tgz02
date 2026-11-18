.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$2;
.super Ljava/lang/Object;
.source "SubscriptFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->onResult(ILjava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$400(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$800(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/message/R$mipmap;->image_message_net_error:I

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$2;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$700(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/message/R$string;->tv_message_net_content:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
