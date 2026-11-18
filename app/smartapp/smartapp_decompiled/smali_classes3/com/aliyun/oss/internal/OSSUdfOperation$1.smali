.class Lcom/aliyun/oss/internal/OSSUdfOperation$1;
.super Lcom/aliyun/oss/event/ProgressInputStream;
.source "OSSUdfOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/oss/internal/OSSUdfOperation;->getUdfApplicationLog(Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;)Lcom/aliyun/oss/model/UdfApplicationLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/oss/internal/OSSUdfOperation;


# direct methods
.method constructor <init>(Lcom/aliyun/oss/internal/OSSUdfOperation;Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSUdfOperation$1;->this$0:Lcom/aliyun/oss/internal/OSSUdfOperation;

    invoke-direct {p0, p2, p3}, Lcom/aliyun/oss/event/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V

    return-void
.end method


# virtual methods
.method protected onEOF()V
    .locals 2

    .line 418
    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation$1;->getListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v0, v1}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    return-void
.end method
