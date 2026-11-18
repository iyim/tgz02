.class Lcom/taobao/uikit/extend/component/TBProgressBar$2;
.super Ljava/lang/Object;
.source "TBProgressBar.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/component/TBProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 113
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$2;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$2;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->access$102(Lcom/taobao/uikit/extend/component/TBProgressBar;I)I

    .line 118
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$2;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->invalidate()V

    return-void
.end method
