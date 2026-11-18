.class Lcom/alibaba/ailabs/geniesdk/NativeService$1;
.super Landroid/database/ContentObserver;
.source "NativeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/NativeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/NativeService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/NativeService;Landroid/os/Handler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/NativeService$1;->this$0:Lcom/alibaba/ailabs/geniesdk/NativeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getStatusManager()Lcom/alibaba/ailabs/geniesdk/status/StatusManager;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/NativeService$1;->this$0:Lcom/alibaba/ailabs/geniesdk/NativeService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/NativeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/geniesdk/status/SystemStatusUtis;->getScreenStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xca

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/alibaba/ailabs/geniesdk/status/StatusManager;->statusChange(ILjava/lang/Object;Z)V

    return-void
.end method
