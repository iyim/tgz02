.class Lcom/alibaba/ailabs/basedomain/ui/BaseService$4;
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


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/BaseService;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/BaseService$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/BaseService;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->access$000(Lcom/alibaba/ailabs/basedomain/ui/BaseService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager;->handleUserUnbind()V

    return-void
.end method
