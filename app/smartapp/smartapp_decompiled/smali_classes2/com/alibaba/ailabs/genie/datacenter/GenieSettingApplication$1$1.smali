.class Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;
.super Ljava/lang/Object;
.source "GenieSettingApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->access$000(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GenieSettingApplication childModeSettingBean="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GenieSettingApplication"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;

    iget-object v3, v3, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->access$100(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result v3

    if-eq v1, v3, :cond_0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u5907\u955c\u50cf\u6709\u66f4\u65b0: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.is.child.mode"

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/system/SystemUtil;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->access$000(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->isEnable()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->access$200(Landroid/content/Context;Z)V

    .line 79
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->access$102(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->access$000(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getProtoVideoAutoTime(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/alibaba/ailabs/childmode/Global;->sProtoVideoAutoTime:I

    .line 86
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isDemo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1$1;->this$1:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;->access$000(Lcom/alibaba/ailabs/genie/datacenter/GenieSettingApplication;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/childmode/Global;->sProtoVideoAutoTime:I

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffTimeoutAndNotify(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
