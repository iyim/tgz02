.class Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;
.super Landroid/database/ContentObserver;
.source "DataCenterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Landroid/os/Handler;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 13

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sUpdateDBBySelf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sUpdateDBBySelf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mDndManualModeContentObserver:Got dnd manual mode enable change msg, selfChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; uri="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataCenterService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-boolean p1, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sUpdateDBBySelf:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string p1, "mDndManualModeContentObserver: Update DND mode info to DB by self, exit."

    .line 763
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    sput-boolean v0, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sUpdateDBBySelf:Z

    return-void

    .line 767
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNotDisturbModeStatus(Landroid/content/Context;)Z

    move-result p1

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDndManualModeContentObserver:Got dnd mamual mode from DB, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDisturbEnable(Landroid/content/Context;)Z

    move-result v1

    .line 772
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDndManualModeContentObserver:Got dnd mamual mode from SP, enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, p1, :cond_c

    .line 785
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchDoNotDisturbModeVersionInfoOnly()V

    .line 787
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->setDisturbEnable(Landroid/content/Context;Z)V

    .line 789
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastRouter;->sendBroadcast(Landroid/content/Context;I)V

    .line 794
    invoke-static {p1}, Lcom/alibaba/ailabs/childmode/Global;->setDNDEnable(Z)V

    .line 795
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "disturb_timed"

    invoke-static {v1, v3, v2}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getBooleanFromDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 797
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object v3

    .line 798
    iget v4, v3, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    .line 799
    iget v5, v3, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    .line 800
    iget v6, v3, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    .line 801
    iget v7, v3, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    .line 802
    iget-boolean v3, v3, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mScreenOff1Min:Z

    const v8, 0xea60

    if-eqz p1, :cond_2

    if-eqz v3, :cond_1

    const-string v3, "mDndManualModeContentObserver:SCOF:Enable screen off in 1 minute"

    .line 805
    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v2}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    .line 808
    :cond_1
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v8, "dnd_mode_enabled_manually"

    invoke-static {v3, v8, p1}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->putBooleanToDisturbModel(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 810
    :cond_2
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->setDndModeClosedByUser(Landroid/content/Context;Z)V

    .line 811
    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/Global;->getCacheScreenOffTimeout(I)I

    move-result v3

    if-lez v3, :cond_3

    move v8, v3

    .line 813
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDndManualModeContentObserver:SCOF:Roll back screen off time to original="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "; time in sp="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v8, v0}, Lcom/alibaba/ailabs/childmode/Global;->updateScreenOffSettingToSystem(Landroid/content/Context;IZ)V

    :goto_0
    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x2

    if-nez v1, :cond_7

    .line 828
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isInTimeCycleModePeriod(IIII)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    .line 834
    :cond_5
    iget-object v8, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v8}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 836
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isLastToNextDay(IIII)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x1

    .line 838
    :goto_1
    iget-object v9, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v9}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x186a1

    const/16 v11, 0x65

    invoke-static {v9, v10, v11}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v9

    .line 839
    iget-object v10, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v10}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x186a2

    const/16 v12, 0x66

    invoke-static {v10, v11, v12}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object v10

    const-string v11, "DataCenterService Set TCM start alarm,"

    .line 840
    invoke-static {v4, v5, v2, v11}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object v11

    const-string v12, "DataCenterService Set TCM end alarm,"

    .line 841
    invoke-static {v6, v7, v3, v12}, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->createGivenCalendar(IIILjava/lang/String;)Ljava/util/Calendar;

    move-result-object v3

    .line 842
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v8, v0, v11, v12, v9}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 843
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v8, v0, v11, v12, v10}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_2

    .line 848
    :cond_7
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->beforeOrAfterTimeCycleModePeriod(IIII)I

    move-result v8

    if-ne v8, v3, :cond_8

    goto :goto_2

    :cond_8
    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    const-string v3, "Current time is is in TCM period, do nothing!"

    .line 856
    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v1, :cond_a

    .line 863
    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isInTimeCycleModePeriod(IIII)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "mDndManualModeContentObserver: TCM enabled and current time is in it"

    .line 864
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    if-eqz p1, :cond_b

    const-string p1, "mDndManualModeContentObserver: DND mode enabled"

    .line 870
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    const-string p1, "mDndManualModeContentObserver: DND mode disabled"

    .line 873
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :goto_3
    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/Global;->setDNDGlableEnable(Z)V

    .line 879
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getDndModeInfo(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    .line 881
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$700(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Ljava/lang/String;)V

    :cond_c
    return-void
.end method
