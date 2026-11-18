.class Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$6;
.super Ljava/lang/Object;
.source "MarketItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->initPopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

.field final synthetic val$tvFavorites:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Landroid/widget/TextView;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$6;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$6;->val$tvFavorites:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 377
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$6;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$200(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$6;->val$tvFavorites:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$700(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;ZLandroid/widget/TextView;)V

    .line 378
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$6;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$800(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V

    return-void
.end method
