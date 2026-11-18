.class Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$1;
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

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$1;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$1;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->access$002(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;I)I

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->access$100(Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setState(I)V

    return-void
.end method
