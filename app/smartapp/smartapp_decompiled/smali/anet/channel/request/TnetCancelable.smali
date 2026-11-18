.class public Lanet/channel/request/TnetCancelable;
.super Ljava/lang/Object;
.source "TnetCancelable.java"

# interfaces
.implements Lanet/channel/request/Cancelable;


# static fields
.field public static final NULL:Lanet/channel/request/TnetCancelable;


# instance fields
.field private final seq:Ljava/lang/String;

.field private final spdySession:Lorg/android/spdy/SpdySession;

.field private final streamId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lanet/channel/request/TnetCancelable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lanet/channel/request/TnetCancelable;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V

    sput-object v0, Lanet/channel/request/TnetCancelable;->NULL:Lanet/channel/request/TnetCancelable;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lanet/channel/request/TnetCancelable;->spdySession:Lorg/android/spdy/SpdySession;

    .line 21
    iput p2, p0, Lanet/channel/request/TnetCancelable;->streamId:I

    .line 22
    iput-object p3, p0, Lanet/channel/request/TnetCancelable;->seq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 8

    const-string v0, "awcn.TnetCancelable"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 28
    :try_start_0
    iget-object v4, p0, Lanet/channel/request/TnetCancelable;->spdySession:Lorg/android/spdy/SpdySession;

    if-eqz v4, :cond_0

    iget v4, p0, Lanet/channel/request/TnetCancelable;->streamId:I

    if-eqz v4, :cond_0

    const-string v4, "cancel tnet request"

    .line 29
    iget-object v5, p0, Lanet/channel/request/TnetCancelable;->seq:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v7, "streamId"

    aput-object v7, v6, v2

    iget v7, p0, Lanet/channel/request/TnetCancelable;->streamId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v0, v4, v5, v6}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v4, p0, Lanet/channel/request/TnetCancelable;->spdySession:Lorg/android/spdy/SpdySession;

    iget v5, p0, Lanet/channel/request/TnetCancelable;->streamId:I

    int-to-long v5, v5

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, v7}, Lorg/android/spdy/SpdySession;->streamReset(JI)I
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 33
    iget-object v5, p0, Lanet/channel/request/TnetCancelable;->seq:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string v6, "errorCode"

    aput-object v6, v3, v2

    invoke-virtual {v4}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const-string/jumbo v1, "request cancel failed."

    invoke-static {v0, v1, v5, v4, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
