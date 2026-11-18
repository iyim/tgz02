.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$10;
.super Ljava/lang/Object;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->showNewTitleBar(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

.field final synthetic val$backClickListner:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 881
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$10;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$10;->val$backClickListner:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$10;->val$backClickListner:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 885
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
