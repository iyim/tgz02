.class Lcom/alibaba/ailabs/genie/logger/service/LogService$2;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/logger/service/LogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$2;->this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$2;->this$0:Lcom/alibaba/ailabs/genie/logger/service/LogService;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/service/LogService;->access$300(Lcom/alibaba/ailabs/genie/logger/service/LogService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
