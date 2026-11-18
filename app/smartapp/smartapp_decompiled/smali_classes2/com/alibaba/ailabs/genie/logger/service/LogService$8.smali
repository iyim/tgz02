.class final Lcom/alibaba/ailabs/genie/logger/service/LogService$8;
.super Ljava/lang/Object;
.source "LogService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/logger/service/LogService;->uploadULogForPush(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$uLogPushJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$8;->val$uLogPushJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ULogCMD"

    const-string v1, "onReceivedPush"

    .line 413
    invoke-static {v0, v1}, Lcom/uc/sdk/ulog/ULog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/logger/service/LogService$8;->val$uLogPushJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ulog/uploader/ULogUploadSetup;->onReceivedPush(Ljava/lang/String;)V

    return-void
.end method
