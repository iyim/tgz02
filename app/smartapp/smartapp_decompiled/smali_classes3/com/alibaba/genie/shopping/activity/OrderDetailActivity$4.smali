.class Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$4;
.super Ljava/lang/Object;
.source "OrderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 201
    new-instance p1, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;

    invoke-direct {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;-><init>()V

    const/4 v0, 0x1

    .line 202
    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->setCancelable(Z)V

    .line 203
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$4;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "show_protocal"

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/activity/ShoppingProtocalDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
