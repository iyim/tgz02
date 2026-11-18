.class public Lcom/taobao/aranger/exception/IPCException;
.super Ljava/lang/Exception;
.source "IPCException.java"


# instance fields
.field private final mErrorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 18
    iput p1, p0, Lcom/taobao/aranger/exception/IPCException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    .line 22
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iput p1, p0, Lcom/taobao/aranger/exception/IPCException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/taobao/aranger/exception/IPCException;->mErrorCode:I

    return v0
.end method
