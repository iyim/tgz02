.class Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;
.super Ljava/lang/Object;
.source "MessageCenterActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/RedDotChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRedChangeListener(I)V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$000(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/alibaba/ailabs/genie/message/R$id;->iv_tab_red:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x8

    if-lez p1, :cond_3

    .line 104
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$100()I

    move-result v3

    if-le p1, v3, :cond_0

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$100()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 109
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0x18

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_1

    :cond_1
    const/16 v3, 0x24

    .line 112
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    .line 114
    :goto_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$200(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/message/ui/SubscriptFragment;->getUserVisibleHint()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$300(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$300(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 119
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 123
    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity$1;->this$0:Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;->access$300(Lcom/alibaba/ailabs/genie/message/ui/MessageCenterActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void
.end method
