.class Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;
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

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;Ljava/util/List;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->val$result:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->val$result:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0x3e8

    if-le v0, v3, :cond_0

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$200(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->val$result:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$200(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->val$result:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadDataFromNet-->listSubscribeInfos--> onResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->val$result:Ljava/util/List;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$400(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$600(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$200(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/ui/adapter/SubscriptListAdapter;->setData(Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$200(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$400(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$700(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/message/R$string;->tv_sub_empty_content:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$800(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$100(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/message/R$mipmap;->image_message_content_empty:I

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2$1;->this$1:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->access$500(Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;)Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/refresh/SmartRefreshLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
