.class Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerCursorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->initAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 98
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$2;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 102
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$2;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 107
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$2;->mIsCanceled:Z

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method
