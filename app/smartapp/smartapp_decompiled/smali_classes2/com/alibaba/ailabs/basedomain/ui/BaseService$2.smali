.class Lcom/alibaba/ailabs/basedomain/ui/BaseService$2;
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

.field final synthetic val$renderData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/BaseService;Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$2;->val$renderData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->access$000(Lcom/alibaba/ailabs/basedomain/ui/BaseService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$2;->val$renderData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleReceiveRingInfo(Ljava/lang/String;)V

    return-void
.end method
