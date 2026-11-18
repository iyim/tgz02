.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$11;
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


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;)V
    .locals 0

    .line 895
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 899
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MAIN"

    .line 901
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 902
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    iget-object v0, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :catch_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$11;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->finish()V

    return-void
.end method
