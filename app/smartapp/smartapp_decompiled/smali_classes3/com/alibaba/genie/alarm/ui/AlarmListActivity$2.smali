.class Lcom/alibaba/genie/alarm/ui/AlarmListActivity$2;
.super Ljava/lang/Object;
.source "AlarmListActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->deleteOneAlarm(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

.field final synthetic val$deleteAlarmId:J


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;J)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$2;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    iput-wide p2, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$2;->val$deleteAlarmId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError:  - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlarmListActivity:"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/genie/alarm/request/GSRBaseRequestData;",
            ">;)V"
        }
    .end annotation

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSuccess:  \u95f9\u949f\u5220\u9664"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$2;->val$deleteAlarmId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlarmListActivity:"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$2;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-static {p1}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->access$000(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;)Ljava/util/List;

    move-result-object p1

    iget-wide v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$2;->val$deleteAlarmId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$2;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    iget-object v0, p1, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-static {p1, v0}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->beginRequest(Landroid/content/Context;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    .line 147
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "\u95f9\u949f\u5df2\u5220\u9664"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
