.class Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$1;
.super Ljava/lang/Object;
.source "ReportEvent.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;->reportTime(JLcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;

.field final synthetic val$callBack:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$1;->this$0:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$1;->val$callBack:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",s1:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReportEvent"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
            ">;)V"
        }
    .end annotation

    const-string p1, "ReportEvent"

    const-string v0, "onSuccess"

    .line 71
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$1;->val$callBack:Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/time/mtop/ReportEvent$ReportCallBack;->onSuccess()V

    :cond_0
    return-void
.end method
