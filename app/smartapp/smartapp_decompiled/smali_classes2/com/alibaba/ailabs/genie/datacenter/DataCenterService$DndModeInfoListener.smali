.class public Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;
.super Ljava/lang/Object;
.source "DataCenterService.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DndModeInfoListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DndModeInfoListener: onResponseFailed, errorCode="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; errorMessage="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataCenterService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 5

    .line 512
    check-cast p1, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponse;

    if-nez p1, :cond_0

    return-void

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponse;->getData()Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;->getModel()Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;

    move-result-object p1

    const-string p3, "DataCenterService"

    if-nez p1, :cond_1

    const-string p1, "There\'s no model info in response, should not happened!"

    .line 519
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 522
    :cond_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DndModeInfoListener##result.getData().getModel()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd_type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x10c8e3

    const/4 v2, 0x1

    if-ne p2, v1, :cond_4

    .line 539
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    new-instance v1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;-><init>()V

    invoke-static {p2, v1, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$400(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object p1

    .line 540
    iget-boolean p2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getDndModeClosedByUser(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 541
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/utils/SharedPreferenceUtils;->getTimeCycleModeStatus(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartHour:I

    iget v1, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mStartMin:I

    iget v3, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndHour:I

    iget v4, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mEndMin:I

    invoke-static {p2, v1, v3, v4}, Lcom/alibaba/ailabs/genie/utils/TimeUtils;->isInTimeCycleModePeriod(IIII)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "DndModeInfoListener: current time is in TCM period, enable DND manual mode"

    .line 542
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iput-boolean v2, p1, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeManualEnable:Z

    const/4 v0, 0x1

    .line 548
    :cond_2
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$500(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I

    move-result p2

    .line 550
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {v1, p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$600(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;I)V

    .line 551
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastRouter;->sendBroadcast(Landroid/content/Context;I)V

    .line 552
    sput-boolean v2, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sUpdateDBBySelf:Z

    .line 553
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->updateDoNoDisturbModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I

    if-eqz v0, :cond_3

    const-string p1, "DndModeInfoListener: DND manual mode status changed, upload to server"

    .line 555
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->generateDndModeInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$700(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Ljava/lang/String;)V

    :cond_3
    const-string p1, "DndModeInfoListener: Update DND mode info to DB by self"

    .line 558
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const v0, 0x10c8e4

    if-ne p2, v0, :cond_6

    .line 560
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNoDisturbModeInfo(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    move-result-object p2

    .line 561
    iget v0, p2, Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;->mDndModeVersion:I

    .line 562
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->getDndModeVersion()I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 563
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {v1, p2, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$400(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;)Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;

    .line 564
    sput-boolean v2, Lcom/alibaba/ailabs/genie/utils/DataCenterUtils;->sUpdateDBBySelf:Z

    .line 565
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->updateDoNoDisturbModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/genie/datacenter/model/DndModeParameters;)I

    .line 567
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DndModeInfoListener: Update DND mode version info to DB, params version="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " model bean version="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->getDndModeVersion()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DndModeInfoListener: Unknown command="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "; should not happend!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_0
    sput-boolean v2, Lcom/alibaba/ailabs/genie/datacenter/DataCenterReceiver;->sHasInit:Z

    return-void
.end method
