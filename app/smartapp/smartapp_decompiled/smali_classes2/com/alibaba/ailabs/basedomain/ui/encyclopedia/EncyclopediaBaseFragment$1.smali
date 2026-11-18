.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$1;
.super Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;
.source "EncyclopediaBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 54
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/EncyclopediaBaseFragment;->autoRollText()V

    :goto_0
    return-void
.end method
