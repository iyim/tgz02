.class Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;
.super Ljava/lang/Object;
.source "FrameAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$000(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$200(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$102(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;I)I

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$200(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I

    move-result v0

    if-nez v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$300(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$300(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;->onAnimationStart()V

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$500(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$400(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$200(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$200(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$600(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$700(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$300(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$300(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;->onAnimationRepeat()V

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$202(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;I)I

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$500(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$800(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$900(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$300(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$300(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$AnimationListener;->onAnimationEnd()V

    goto :goto_0

    .line 51
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$208(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I

    .line 52
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$500(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$800(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;

    invoke-static {v2}, Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;->access$900(Lcom/alibaba/ailabs/basedomain/ui/video/view/FrameAnimation;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_0
    return-void
.end method
