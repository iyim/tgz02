.class Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$2;
.super Ljava/lang/Object;
.source "ShoppingSearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 111
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 114
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->access$000(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;)Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchGridViewAdapter;->getItem(I)Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p2, p0, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity$2;->this$0:Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;

    invoke-static {p2, p1}, Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;->access$100(Lcom/alibaba/genie/shopping/activity/ShoppingSearchActivity;Lcom/alibaba/genie/shopping/bean/SearchGoodInfo;)V

    :cond_0
    return-void
.end method
