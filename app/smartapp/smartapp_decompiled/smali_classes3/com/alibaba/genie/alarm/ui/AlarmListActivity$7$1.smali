.class Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7$1;
.super Ljava/lang/Object;
.source "AlarmListActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->onSaveClicked(Lcom/alibaba/genie/alarm/bean/AlarmBean;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$1:Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7$1;->this$1:Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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

    .line 413
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7$1;->this$1:Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;

    iget-object v0, v0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    iget-object v1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7$1;->this$1:Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;

    iget-object v1, v1, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$7;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    iget-object v1, v1, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-static {v0, v1}, Lcom/alibaba/genie/alarm/request/ListAlarmRequest;->beginRequest(Landroid/content/Context;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    .line 414
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->getMsgInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->getMsgInfo()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
