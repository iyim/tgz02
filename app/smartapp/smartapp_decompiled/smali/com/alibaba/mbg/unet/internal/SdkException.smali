.class public Lcom/alibaba/mbg/unet/internal/SdkException;
.super Lcom/alibaba/mbg/unet/RequestException;
.source "SdkException.java"


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/alibaba/mbg/unet/RequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/alibaba/mbg/unet/internal/SdkException;->mErrorCode:I

    .line 14
    iput p3, p0, Lcom/alibaba/mbg/unet/internal/SdkException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/alibaba/mbg/unet/internal/SdkException;->mErrorCode:I

    return v0
.end method

.method public getException()Ljava/lang/Throwable;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/alibaba/mbg/unet/internal/SdkException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
