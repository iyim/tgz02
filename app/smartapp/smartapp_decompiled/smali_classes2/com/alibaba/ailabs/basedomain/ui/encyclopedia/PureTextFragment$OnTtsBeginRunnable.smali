.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$OnTtsBeginRunnable;
.super Ljava/lang/Object;
.source "PureTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTtsBeginRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$OnTtsBeginRunnable;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$OnTtsBeginRunnable;-><init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment$OnTtsBeginRunnable;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;->access$100(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PureTextFragment;)V

    return-void
.end method
