.class Lcom/alibaba/analytics/core/config/UTDefaultConfMgr$1;
.super Ljava/lang/Object;
.source "UTDefaultConfMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;->requestOnlineConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/alibaba/analytics/core/config/UTDefaultConfMgr$1;->this$0:Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTDefaultConfMgr$1;->this$0:Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;->init()V

    .line 17
    iget-object v0, p0, Lcom/alibaba/analytics/core/config/UTDefaultConfMgr$1;->this$0:Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/config/UTDefaultConfMgr;->dispatchLocalCacheConfigs()V

    const-string v0, "0"

    .line 18
    invoke-static {v0}, Lcom/alibaba/analytics/core/config/UTBaseConfMgr;->sendConfigTimeStamp(Ljava/lang/String;)V

    return-void
.end method
