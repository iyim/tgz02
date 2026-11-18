.class Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$2;
.super Ljava/lang/Object;
.source "DataCenterReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->handleNetworkStateChanged(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;Landroid/content/Context;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$2;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->isMemberType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result v0

    .line 291
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateEyeModeInfo(Z)V

    :cond_0
    return-void
.end method
