.class public Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;
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
    name = "TtsInfoUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 399
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TtsInfoUpdateListener: Upload tts or wakeup feedback info to server Failed, errorCode="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; errorMessage="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; API_TYPE="

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "DataCenterService"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p3, 0x10c8e1

    if-ne p1, p3, :cond_0

    .line 401
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$000(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)I

    move-result p3

    or-int/lit8 p3, p3, 0x2

    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$002(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)I

    goto :goto_0

    :cond_0
    const p3, 0x10c8e2

    if-ne p1, p3, :cond_1

    .line 403
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$000(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)I

    move-result p3

    or-int/lit8 p3, p3, 0x4

    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$002(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)I

    :cond_1
    :goto_0
    const-string p1, "ANDROID_SYS_NETWORK_ERROR"

    .line 405
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 407
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    const p2, 0x1d4c0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$200(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)V

    return-void

    .line 410
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$300(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 0

    const-string p1, "DataCenterService"

    const p3, 0x10c8e1

    if-ne p2, p3, :cond_0

    const-string p2, "TtsInfoUpdateListener: Upload tts feedback info to server OK"

    .line 387
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$000(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)I

    move-result p2

    and-int/lit8 p2, p2, -0x3

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$002(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)I

    .line 390
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$100(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    goto :goto_0

    :cond_0
    const p3, 0x10c8e2

    if-ne p2, p3, :cond_1

    const-string p2, "TtsInfoUpdateListener: Upload wakeup feedback info to server OK"

    .line 392
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoUpdateListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$000(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)I

    move-result p2

    and-int/lit8 p2, p2, -0x5

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$002(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)I

    :cond_1
    :goto_0
    return-void
.end method
