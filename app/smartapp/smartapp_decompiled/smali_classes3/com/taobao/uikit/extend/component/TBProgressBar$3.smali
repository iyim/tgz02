.class Lcom/taobao/uikit/extend/component/TBProgressBar$3;
.super Ljava/lang/Object;
.source "TBProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/TBProgressBar;->setCurrentProgress(I)V
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

    .line 146
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$3;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$3;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->setProgress(I)V

    .line 151
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$3;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getProgress()I

    move-result p1

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$3;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 152
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$3;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->dismiss()V

    :cond_0
    return-void
.end method
