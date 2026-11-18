.class Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;
.super Ljava/lang/Object;
.source "ImageLoadFeature.java"

# interfaces
.implements Lcom/taobao/phenix/intf/event/IRetryHandlerOnFailure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageRetryHandler"
.end annotation


# instance fields
.field private retryUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRetryUrl(Lcom/taobao/phenix/intf/PhenixCreator;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 739
    instance-of p1, p2, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;

    if-eqz p1, :cond_0

    nop

    nop

    invoke-virtual {p2}, Lcom/taobao/phenix/loader/network/HttpCodeResponseException;->getHttpCode()I

    move-result p1

    const/16 p2, 0x194

    if-ne p1, p2, :cond_0

    .line 740
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;->retryUrl:Ljava/lang/String;

    iput-object p2, p1, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadingUrl:Ljava/lang/String;

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setRetryUrl(Ljava/lang/String;)Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "END_IMAGE_URL"

    .line 729
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 730
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;->retryUrl:Ljava/lang/String;

    goto :goto_0

    .line 732
    :cond_0
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageRetryHandler;->retryUrl:Ljava/lang/String;

    :goto_0
    return-object p0
.end method
