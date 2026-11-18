.class Landroid/taobao/windvane/webview/WVUIModel$1;
.super Ljava/lang/Object;
.source "WVUIModel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/windvane/webview/WVUIModel;->showNotiView(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/windvane/webview/WVUIModel;


# direct methods
.method constructor <init>(Landroid/taobao/windvane/webview/WVUIModel;)V
    .locals 0

    .line 308
    iput-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$1;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 327
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$1;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-static {p1}, Landroid/taobao/windvane/webview/WVUIModel;->access$000(Landroid/taobao/windvane/webview/WVUIModel;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 328
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$1;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-static {p1}, Landroid/taobao/windvane/webview/WVUIModel;->access$000(Landroid/taobao/windvane/webview/WVUIModel;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 329
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 330
    nop

    nop

    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel$1;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-static {v0}, Landroid/taobao/windvane/webview/WVUIModel;->access$000(Landroid/taobao/windvane/webview/WVUIModel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 332
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$1;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/taobao/windvane/webview/WVUIModel;->access$002(Landroid/taobao/windvane/webview/WVUIModel;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 316
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$1;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-static {p1}, Landroid/taobao/windvane/webview/WVUIModel;->access$000(Landroid/taobao/windvane/webview/WVUIModel;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 317
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$1;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-static {p1}, Landroid/taobao/windvane/webview/WVUIModel;->access$000(Landroid/taobao/windvane/webview/WVUIModel;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 318
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 319
    nop

    nop

    iget-object v0, p0, Landroid/taobao/windvane/webview/WVUIModel$1;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    invoke-static {v0}, Landroid/taobao/windvane/webview/WVUIModel;->access$000(Landroid/taobao/windvane/webview/WVUIModel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 321
    :cond_0
    iget-object p1, p0, Landroid/taobao/windvane/webview/WVUIModel$1;->this$0:Landroid/taobao/windvane/webview/WVUIModel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/taobao/windvane/webview/WVUIModel;->access$002(Landroid/taobao/windvane/webview/WVUIModel;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_1
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
