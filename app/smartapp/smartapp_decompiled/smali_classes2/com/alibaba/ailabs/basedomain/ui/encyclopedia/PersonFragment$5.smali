.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$5;
.super Ljava/lang/Object;
.source "PersonFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->fillData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 159
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->autoRollText()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
