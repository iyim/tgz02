.class Lcom/alibaba/ailabs/genie/logger/service/LogService$6$1;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/logger/service/LogService$6;->onReceivedData(Lcom/uc/rmbsdk/export/RmbReceivedData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/logger/service/LogService$6;

.field final synthetic val$dataStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/logger/service/LogService$6;Ljava/lang/String;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$6$1;->this$1:Lcom/alibaba/ailabs/genie/logger/service/LogService$6;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$6$1;->val$dataStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 354
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$6$1;->val$dataStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ulog/uploader/ULogUploadSetup;->onReceivedPush(Ljava/lang/String;)V

    return-void
.end method
