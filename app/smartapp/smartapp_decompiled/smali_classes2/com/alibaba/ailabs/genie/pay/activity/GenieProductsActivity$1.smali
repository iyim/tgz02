.class Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$1;
.super Ljava/lang/Object;
.source "GenieProductsActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeniePay"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->access$002(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;I)I

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->access$100(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->access$000(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->setSelectedPosition(I)V

    .line 68
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity$1;->this$0:Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;->access$100(Lcom/alibaba/ailabs/genie/pay/activity/GenieProductsActivity;)Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/pay/widget/MyAdapter;->notifyDataSetChanged()V

    return-void
.end method
