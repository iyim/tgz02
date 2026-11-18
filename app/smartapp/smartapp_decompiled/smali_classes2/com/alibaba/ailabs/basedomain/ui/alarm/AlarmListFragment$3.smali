.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$3;
.super Ljava/lang/Object;
.source "AlarmListFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDelete failed, errorCode:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " errorMessage:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " reqContext:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlarmListFragment"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 0

    .line 186
    check-cast p1, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponse;

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDelete success NetApi response:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AlarmListFragment"

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponse;->getData()Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->getAlarmData()Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 191
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "##result.getData()getModel = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->getModel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;)V

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "##result.getData()get = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->getAlarmData()Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mtop/MtopAlibabaAicloudTAlarmclockDeleteResponseData;->getAlarmData()Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;->access$600(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmListFragment;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmData;)V

    :cond_0
    return-void
.end method
