.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$2;
.super Ljava/lang/Object;
.source "PureTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$2;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
