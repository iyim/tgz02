.class Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$1;
.super Ljava/lang/Object;
.source "MarketTabFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 139
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tabname"

    .line 140
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$1;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "init"

    const-string v2, "market_tab"

    .line 141
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
