.class Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$2;
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

    .line 886
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$2;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mChildModeContentObserver:Got child mode enable change msg, selfChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; uri="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataCenterService"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService$2;->this$0:Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;->access$100(Lcom/alibaba/ailabs/genie/datacenter/DataCenterService;)V

    return-void
.end method
