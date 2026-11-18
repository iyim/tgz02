.class Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$2;
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

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$2;->this$0:Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver;

    iput-object p2, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "UserInfoChangeReceiver"

    const-string v1, "UNBIND_USER clear password"

    .line 46
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    const v2, 0xea60

    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    const-string v0, "persist.sys.cache.screen_off_timeout"

    const-string v2, "60000"

    .line 51
    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isListenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateListenModeInfo(Z)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/UserInfoChangeReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->clearDisturbModeData(Landroid/content/Context;)V

    return-void
.end method
