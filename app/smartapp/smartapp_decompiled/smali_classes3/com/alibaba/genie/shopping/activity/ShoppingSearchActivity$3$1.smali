.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3$1;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;->onScrollStateChanged(Landroid/widget/AbsListView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;

.field final synthetic val$nextPosition:I


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;I)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3$1;->this$1:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;

    iput p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3$1;->val$nextPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3$1;->this$1:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)Lcom/alibaba/genie/shopping/view/CustomGridView;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3$1;->val$nextPosition:I

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/genie/shopping/view/CustomGridView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method
