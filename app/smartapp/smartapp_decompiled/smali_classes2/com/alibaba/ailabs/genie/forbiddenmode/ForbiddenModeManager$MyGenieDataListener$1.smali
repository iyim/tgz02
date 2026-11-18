.class Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;
.super Ljava/lang/Object;
.source "ForbiddenModeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->onUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$800(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$702(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;Landroid/content/Context;)Landroid/content/Context;

    .line 490
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$1000(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$902(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    .line 491
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$700(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$700(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    const-string v1, "ForbiddenModeManager"

    const-string v2, "\u8bbe\u5907\u955c\u50cf\u6709\u66f4\u65b0\uff01\uff01\uff01\uff01"

    .line 495
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65b0\u6570\u636e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1100(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "\u5f53\u524dmChildModeSettingBean == null\uff01\uff01\uff01\uff01"

    .line 498
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 501
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65e7\u6570\u636e= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1100(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u513f\u7ae5\u6570\u636e\u662f\u5426\u76f8\u7b49"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1100(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1100(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getDailyAvailableTime()I

    move-result v2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getDailyAvailableTime()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    .line 506
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1100(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getWeekendAvailableTime()I

    move-result v2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getWeekendAvailableTime()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 507
    :cond_2
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "sp_key_total_available_time"

    invoke-virtual {v2, v4, v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->updateFlagCloseByUser(Ljava/lang/String;Z)V

    .line 511
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1102(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 513
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 516
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$700(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->isShieldEyeMode(Landroid/content/Context;)Z

    move-result v2

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mEyeModelEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1200(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", eyeModeEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1200(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;)Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 519
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1300(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Z)V

    .line 520
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener$1;->this$0:Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;->access$900(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager$MyGenieDataListener;)Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;->access$1202(Lcom/alibaba/ailabs/genie/forbiddenmode/ForbiddenModeManager;Z)Z

    .line 522
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u624b\u673aAPP\u8bbe\u7f6e\u5468\u672b\u6bcf\u65e5\u603b\u65f6\u957f="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getWeekendAvailableTime()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method
