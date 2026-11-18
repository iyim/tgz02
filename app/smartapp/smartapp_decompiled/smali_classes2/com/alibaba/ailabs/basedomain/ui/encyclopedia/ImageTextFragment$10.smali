.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$10;
.super Ljava/lang/Object;
.source "ImageTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$10;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$10;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$10;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->autoRollText()V

    const-string v0, "ImageTextFragment"

    const-string v1, "mAdjustIndexPositionRunnable run() called"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
