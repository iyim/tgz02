.class Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$1;
.super Ljava/lang/Object;
.source "UserInfoChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver;Landroid/content/Context;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$1;->this$0:Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver;

    iput-object p2, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->isMemberType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UserInfoChangeReceiver"

    const-string v1, "BIND_USER sync user data"

    .line 34
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->startTcmAlarm(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateEyeModeInfo(Z)V

    :cond_0
    return-void
.end method
