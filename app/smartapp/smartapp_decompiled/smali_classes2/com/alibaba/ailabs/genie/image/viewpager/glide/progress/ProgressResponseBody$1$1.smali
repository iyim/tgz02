.class Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1$1;
.super Ljava/lang/Object;
.source "ProgressResponseBody.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->read(Lokio/Buffer;J)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1$1;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1$1;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->access$000(Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;)Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1$1;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->access$100(Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1$1;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;

    iget-wide v3, v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->totalBytesRead:J

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1$1;->this$1:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;->this$0:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->contentLength()J

    move-result-wide v5

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;->onProgress(Ljava/lang/String;JJ)V

    return-void
.end method
