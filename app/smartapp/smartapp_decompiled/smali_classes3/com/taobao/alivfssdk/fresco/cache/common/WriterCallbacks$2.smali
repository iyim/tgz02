.class final Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$2;
.super Ljava/lang/Object;
.source "WriterCallbacks.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks;->from([B)Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$2;->val$data:[B

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

    .line 54
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$2;->val$data:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-object p1
.end method
