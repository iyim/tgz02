.class Lcom/taobao/uikit/extend/component/TBProgressBar$4;
.super Ljava/lang/Object;
.source "TBProgressBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 157
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$4;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$4;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->access$202(Lcom/taobao/uikit/extend/component/TBProgressBar;I)I

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 165
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/TBProgressBar$4;->this$0:Lcom/taobao/uikit/extend/component/TBProgressBar;

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/component/TBProgressBar;->getProgress()I

    move-result v0

    invoke-static {p1, v0}, Lcom/taobao/uikit/extend/component/TBProgressBar;->access$202(Lcom/taobao/uikit/extend/component/TBProgressBar;I)I

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
