.class Lcom/alibaba/ailabs/basedomain/ui/BaseService$1;
.super Ljava/lang/Object;
.source "BaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/BaseService;->onHandleWork(Landroid/content/Intent;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

.field final synthetic val$syncAlarms:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/BaseService;Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$1;->val$syncAlarms:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->access$000(Lcom/alibaba/ailabs/basedomain/ui/BaseService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleSyncAllAlarmDataSuccess()V

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->access$000(Lcom/alibaba/ailabs/basedomain/ui/BaseService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->clearAllAlarms()V

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$1;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->access$000(Lcom/alibaba/ailabs/basedomain/ui/BaseService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$1;->val$syncAlarms:Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;

    const-string v2, "data_sync_full_sync"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->processAddAlarmContents(Lcom/alibaba/ailabs/basedomain/model/alarm/AlarmContents;Ljava/lang/String;)V

    return-void
.end method
