.class Lcom/taobao/uikit/extend/component/TBProgressBar$5;
.super Ljava/lang/Object;
.source "TBProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/TBProgressBar;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/component/TBProgressBar;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$5;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$5;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->setAlpha(F)V

    .line 241
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$5;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getAlpha()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$5;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method
