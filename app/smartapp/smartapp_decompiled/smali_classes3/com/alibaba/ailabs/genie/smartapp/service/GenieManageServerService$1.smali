.class Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService$1;
.super Ljava/lang/Object;
.source "GenieManageServerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 122
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->access$000(Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GenieManageServerService:onServiceConnected, asr service conected"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "com.alibaba.ailabs.genie.smartapp"

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->access$000(Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieManageServerService:onServiceDisconnected, retry bind asr service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.geniesdk.NativeService"

    .line 136
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yunos.tv.alitvasr.service"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->access$100(Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;)Landroid/content/ServiceConnection;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/smartapp/service/GenieManageServerService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
