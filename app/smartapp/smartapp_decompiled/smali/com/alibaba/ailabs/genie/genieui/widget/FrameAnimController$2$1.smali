.class Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2$1;
.super Ljava/lang/Object;
.source "FrameAnimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$2;->this$0:Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;->access$1000(Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController;)Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/genieui/widget/FrameAnimController$AnimationListener;->onAnimationPlayStart()V

    return-void
.end method
