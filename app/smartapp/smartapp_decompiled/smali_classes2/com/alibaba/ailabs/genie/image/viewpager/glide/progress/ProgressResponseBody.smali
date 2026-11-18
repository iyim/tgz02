.class public Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;
.super Lokhttp3/ResponseBody;
.source "ProgressResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;
    }
.end annotation


# static fields
.field private static final mainThreadHandler:Landroid/os/Handler;


# instance fields
.field private bufferedSource:Lokio/BufferedSource;

.field private internalProgressListener:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;

.field private responseBody:Lokhttp3/ResponseBody;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->mainThreadHandler:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Ljava/lang/String;Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;Lokhttp3/ResponseBody;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->url:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->internalProgressListener:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;

    .line 33
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;)Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->internalProgressListener:Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->mainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private source(Lokio/Source;)Lokio/Source;
    .locals 1

    .line 55
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$1;-><init>(Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;Lokio/Source;)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->responseBody:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->source(Lokio/Source;)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody;->bufferedSource:Lokio/BufferedSource;

    return-object v0
.end method
