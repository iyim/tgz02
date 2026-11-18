.class Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;
.super Ljava/lang/Object;
.source "DataCenterService.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DndModeInfoUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$1;)V
    .locals 0

    .line 939
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;-><init>(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    return-void
.end method


# virtual methods
.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 949
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DndModeInfoUpdater:onResponseFailed: Update DND mode info to server failed, errorCode="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "; errorMessage="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DataCenterService"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$000(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)I

    move-result p4

    or-int/lit8 p4, p4, 0x1

    invoke-static {p1, p4}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$002(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)I

    if-nez p2, :cond_0

    const-string p1, "DndModeInfoUpdater: errorCode == null !!!"

    .line 953
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p1, "HSF_ERROR"

    .line 957
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DndModeInfoUpdater:onResponseFailed: Update update version code first."

    .line 959
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchDoNotDisturbModeVersionInfoOnly()V

    const-string p1, "DndModeInfoUpdater:onResponseFailed: Update dnd mode info again after failed."

    .line 962
    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$300(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    goto :goto_0

    :cond_1
    const-string p1, "ANDROID_SYS_NETWORK_ERROR"

    .line 964
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 966
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    const p2, 0x1d4c0

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$200(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)V

    goto :goto_0

    .line 968
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$300(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    :goto_0
    return-void
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 0

    const-string p1, "DataCenterService"

    const-string p2, "DndModeInfoUpdater:onResponseSuccess: Update DND mode info to server OK, update version code ASAP."

    .line 942
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$000(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)I

    move-result p2

    and-int/lit8 p2, p2, -0x2

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$002(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;I)I

    .line 944
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$DndModeInfoUpdater;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->fetchDoNotDisturbModeVersionInfoOnly()V

    return-void
.end method
