.class Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketHandler;
.super Landroid/os/Handler;
.source "MarketTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarketHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketHandler;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$1;)V
    .locals 0

    .line 615
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketHandler;-><init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 618
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$MarketHandler;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$900(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V

    :goto_0
    return-void
.end method
