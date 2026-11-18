.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5$1;
.super Ljava/lang/Object;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5$1;->this$1:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$5;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
