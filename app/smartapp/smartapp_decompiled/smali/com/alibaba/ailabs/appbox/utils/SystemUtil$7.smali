.class final Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;
.super Ljava/lang/Object;
.source "SystemUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->expandViewTouchDelegate(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$top:I

    iput p3, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$bottom:I

    iput p4, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$left:I

    iput p5, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$right:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 792
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 793
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$view:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 794
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 796
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$top:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 797
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 798
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$left:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 799
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 801
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$view:Landroid/view/View;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 803
    const-class v0, Landroid/view/View;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/SystemUtil$7;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    return-void
.end method
