.class public Lcom/taobao/alivfssdk/cache/AVFSException;
.super Ljava/lang/IllegalStateException;
.source "AVFSException.java"


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_INDEXING:I = -0x4

.field public static final ERROR_IO:I = -0x2

.field public static final ERROR_SERIALIZATION:I = -0x3


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    iput p3, p0, Lcom/taobao/alivfssdk/cache/AVFSException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/taobao/alivfssdk/cache/AVFSException;->mErrorCode:I

    return v0
.end method
