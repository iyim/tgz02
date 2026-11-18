.class Lcom/alibaba/ailabs/appbox/BoxApplication$3$1;
.super Ljava/lang/Object;
.source "BoxApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/BoxApplication$3;->onGatewayStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/BoxApplication$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/BoxApplication$3;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/BoxApplication$3$1;->this$1:Lcom/alibaba/ailabs/appbox/BoxApplication$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 313
    invoke-static {}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->getInstance()Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/service/MarketServiceManager;->start()V

    const-string v0, "BoxApplication-l"

    const-string v1, "AgisManager.callback true to start - task"

    .line 314
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
