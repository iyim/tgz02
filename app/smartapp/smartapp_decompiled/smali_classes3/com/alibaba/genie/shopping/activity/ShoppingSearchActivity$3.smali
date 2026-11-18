.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 124
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->access$200(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)I

    move-result p1

    .line 126
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->access$300(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)Lcom/alibaba/genie/shopping/view/CustomGridView;

    move-result-object p2

    new-instance v0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3$1;-><init>(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;I)V

    invoke-virtual {p2, v0}, Lcom/alibaba/genie/shopping/view/CustomGridView;->post(Ljava/lang/Runnable;)Z

    .line 132
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$3;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    div-int/lit8 p1, p1, 0x4

    invoke-static {p2, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->access$402(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;I)I

    :cond_0
    return-void
.end method
