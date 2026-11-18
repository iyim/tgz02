.class Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FingerCursorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->hide()V
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

    .line 240
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 241
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$4;->mIsCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$4;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 250
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$4;->mIsCanceled:Z

    if-eqz p1, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView$4;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/vision/FingerCursorView;->setVisibility(I)V

    return-void
.end method
