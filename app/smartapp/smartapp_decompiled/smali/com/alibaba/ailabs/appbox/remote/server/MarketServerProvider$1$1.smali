.class Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider$1$1;
.super Ljava/lang/Object;
.source "MarketServerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider$1;->queueIdle()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider$1;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider$1$1;->this$1:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerProvider$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 45
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/SystemUtil;->deleteOldDir()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
