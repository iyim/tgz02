.class Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;
.super Lokio/ForwardingSource;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastTotalBytesRead:J

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;

.field totalBytesRead:J


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;Lokio/Source;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;

    invoke-direct {p0, p2}, Lokio/ForwardingSource;-><init>(Lokio/Source;)V

    return-void
.end method


# virtual methods
.method public read(Lokio/Buffer;J)J
    .locals 4
    .param p1    # Lokio/Buffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSource;->read(Lokio/Buffer;J)J

    move-result-wide p1

    .line 62
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->totalBytesRead:J

    const-wide/16 v2, -0x1

    cmp-long p3, p1, v2

    if-nez p3, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->totalBytesRead:J

    .line 64
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;)Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->lastTotalBytesRead:J

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->totalBytesRead:J

    cmp-long p3, v0, v2

    if-eqz p3, :cond_1

    .line 65
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->lastTotalBytesRead:J

    .line 66
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->access$200()Landroid/os/Handler;

    move-result-object p3

    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1$1;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-wide p1
.end method
