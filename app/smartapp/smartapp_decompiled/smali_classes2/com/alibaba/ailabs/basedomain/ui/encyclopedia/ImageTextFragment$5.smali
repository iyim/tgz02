.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$5;
.super Ljava/lang/Object;
.source "ImageTextFragment.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->onResume()V
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

    .line 128
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 131
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->mStopAutoRoll:Z

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;->access$002(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/ImageTextFragment;Z)Z

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ut scrollY:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " oldScrollY:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ImageTextFragment"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
