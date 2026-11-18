.class Lcom/aliyun/oss/internal/OSSObjectOperation$1;
.super Lcom/aliyun/oss/event/ProgressInputStream;
.source "OSSObjectOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aliyun/oss/internal/OSSObjectOperation;->getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aliyun/oss/internal/OSSObjectOperation;


# direct methods
.method constructor <init>(Lcom/aliyun/oss/internal/OSSObjectOperation;Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/aliyun/oss/internal/OSSObjectOperation$1;->this$0:Lcom/aliyun/oss/internal/OSSObjectOperation;

    invoke-direct {p0, p2, p3}, Lcom/aliyun/oss/event/ProgressInputStream;-><init>(Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V

    return-void
.end method


# virtual methods
.method protected onEOF()V
    .locals 2

    .line 279
    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation$1;->getListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v0, v1}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    return-void
.end method
