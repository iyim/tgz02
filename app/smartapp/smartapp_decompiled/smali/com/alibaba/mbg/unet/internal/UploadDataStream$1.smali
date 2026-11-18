.class Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;
.super Ljava/lang/Object;
.source "UploadDataStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/UploadDataStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;


# direct methods
.method constructor <init>(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->access$000(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->access$100(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 28
    monitor-exit v0

    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    sget-object v2, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->NOT_IN_CALLBACK:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    invoke-static {v1, v2}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->access$200(Lcom/alibaba/mbg/unet/internal/UploadDataStream;Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)V

    .line 31
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-static {v1}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->access$300(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    sget-object v2, Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;->READ:Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    invoke-static {v1, v2}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->access$402(Lcom/alibaba/mbg/unet/internal/UploadDataStream;Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;)Lcom/alibaba/mbg/unet/internal/UploadDataStream$UserCallback;

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-static {v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->access$500(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)Lcom/alibaba/mbg/unet/internal/UploadDataProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    iget-object v2, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-static {v2}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->access$300(Lcom/alibaba/mbg/unet/internal/UploadDataStream;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mbg/unet/internal/UploadDataProvider;->read(Lcom/alibaba/mbg/unet/internal/UploadDataSink;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 39
    iget-object v1, p0, Lcom/alibaba/mbg/unet/internal/UploadDataStream$1;->this$0:Lcom/alibaba/mbg/unet/internal/UploadDataStream;

    invoke-static {v1, v0}, Lcom/alibaba/mbg/unet/internal/UploadDataStream;->access$600(Lcom/alibaba/mbg/unet/internal/UploadDataStream;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 32
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected readData call. Buffer is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
