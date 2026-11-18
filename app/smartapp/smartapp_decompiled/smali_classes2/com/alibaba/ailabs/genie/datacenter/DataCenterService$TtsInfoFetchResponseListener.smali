.class public Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;
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
    name = "TtsInfoFetchResponseListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "TtsInfoFetchResponseListener: onResponseFailed, errorCode="

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
    .locals 0

    .line 359
    new-instance p2, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener$1;

    invoke-direct {p2, p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener$1;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$TtsInfoFetchResponseListener;Lmtopsdk/mtop/domain/BaseOutDo;)V

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
