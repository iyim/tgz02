.class public Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;
.super Ljava/lang/Object;
.source "WVFixedThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/thread/WVFixedThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BufferWrapper"
.end annotation


# instance fields
.field private isFree:Z

.field public tempBuffer:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->tempBuffer:[B

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->isFree:Z

    .line 67
    sget v0, Landroid/taobao/windvane/thread/WVFixedThreadPool;->bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->tempBuffer:[B

    return-void
.end method

.method static synthetic access$000(Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->isFree:Z

    return p0
.end method

.method static synthetic access$002(Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->isFree:Z

    return p1
.end method


# virtual methods
.method public isFree()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->isFree:Z

    return v0
.end method

.method public setIsFree(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Landroid/taobao/windvane/thread/WVFixedThreadPool$BufferWrapper;->isFree:Z

    return-void
.end method
