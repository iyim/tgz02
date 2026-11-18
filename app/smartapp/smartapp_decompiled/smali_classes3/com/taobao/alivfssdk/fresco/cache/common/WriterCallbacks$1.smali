.class final Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$1;
.super Ljava/lang/Object;
.source "WriterCallbacks.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks;->from(Ljava/io/InputStream;)Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$1;->val$is:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$1;->val$is:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/taobao/alivfssdk/fresco/common/internal/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-object p1
.end method
