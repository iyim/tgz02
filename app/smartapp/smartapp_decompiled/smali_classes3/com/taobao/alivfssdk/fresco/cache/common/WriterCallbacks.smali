.class public Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks;
.super Ljava/lang/Object;
.source "WriterCallbacks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static from(Ljava/io/InputStream;)Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;
    .locals 1

    .line 33
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$1;

    invoke-direct {v0, p0}, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$1;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static from([B)Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallback;
    .locals 1

    .line 51
    new-instance v0, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$2;

    invoke-direct {v0, p0}, Lcom/taobao/alivfssdk/fresco/cache/common/WriterCallbacks$2;-><init>([B)V

    return-object v0
.end method
