.class Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$5;
.super Ljava/lang/Object;
.source "MarketItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->bindClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 356
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$5;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$700(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;ZLandroid/widget/TextView;)V

    return-void
.end method
