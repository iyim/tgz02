.class Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$1;
.super Ljava/lang/Object;
.source "ShoppingDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 131
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 134
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity$1;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingDetailActivity;->finish()V

    return-void
.end method
