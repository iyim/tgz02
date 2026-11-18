.class Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;
.super Ljava/lang/Object;
.source "DataCenterReceiver.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/data/GenieDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 5

    .line 301
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->access$008(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)I

    .line 302
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->access$000(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DataCenterReceiver"

    if-le v0, v1, :cond_0

    const-string v0, "mCount > 1, return"

    .line 303
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->access$100(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->unRegisterListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V

    const-string v0, "onUpdate"

    .line 309
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sys.ali.home.package"

    const-string v3, ""

    .line 310
    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "homePkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.alibaba.ailabs.genie.children"

    .line 313
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->access$100(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u513f\u7ae5\u6a21\u5f0f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "setChildModeSelf-true"

    .line 318
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->access$100(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->setChildModeSelf(Landroid/content/Context;Z)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver$3;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->access$100(Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateEyeModeInfo(Z)V

    :cond_2
    return-void
.end method
