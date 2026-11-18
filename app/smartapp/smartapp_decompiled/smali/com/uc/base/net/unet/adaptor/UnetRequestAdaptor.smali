.class public Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;
.super Ljava/lang/Object;
.source "UnetRequestAdaptor.java"

# interfaces
.implements Lcom/uc/base/net/IRequest;


# instance fields
.field private final LOAD_FLAG_EXT_DISABLE_CONTENT_MISMATCH_CHECK:I

.field private final LOAD_FLAG_EXT_DISABLE_HTTP2:I

.field private final LOAD_FLAG_EXT_DISABLE_ZSTD:I

.field private final LOAD_FLAG_EXT_IGNORE_SSL_ERROR:I

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uc/base/net/adaptor/Headers$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mInitURL:Ljava/lang/String;

.field private mIsUseBackupIp:Z

.field private mLoadFlags:I

.field private mUnetRequest:Lcom/alibaba/mbg/unet/Request;

.field private mZstdSupportFlag:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/mbg/unet/UnetManager;Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mInitURL:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    const/high16 v0, 0x100000

    .line 37
    iput v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->LOAD_FLAG_EXT_IGNORE_SSL_ERROR:I

    const/high16 v0, 0x200000

    .line 38
    iput v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->LOAD_FLAG_EXT_DISABLE_HTTP2:I

    const/high16 v0, 0x400000

    .line 39
    iput v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->LOAD_FLAG_EXT_DISABLE_CONTENT_MISMATCH_CHECK:I

    const/high16 v0, 0x800000

    .line 40
    iput v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->LOAD_FLAG_EXT_DISABLE_ZSTD:I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor UnetRequestAdaptor url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {p1, p2}, Lcom/alibaba/mbg/unet/UnetManager;->createRequest(Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    .line 50
    iput-object p2, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mInitURL:Ljava/lang/String;

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UnetRequestAdaptor UnetRequestAdaptor createRequest :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#unet UnetRequestAdaptor createRequest url: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor addHeader key :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "iflow-gz2"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    new-instance v1, Lcom/uc/base/net/adaptor/Headers$Header;

    invoke-direct {v1, p1, p2}, Lcom/uc/base/net/adaptor/Headers$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addHeaders(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/uc/base/net/adaptor/Headers$Header;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "shellunet"

    const-string v1, "UnetRequestAdaptor addHeaders"

    .line 195
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 197
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 202
    invoke-virtual {v0}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Request;->cancel()V

    return-void
.end method

.method public containsHeaders(Ljava/lang/String;)Z
    .locals 3

    .line 328
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 333
    invoke-virtual {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 338
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnetRequestAdaptor containsHeaders header:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contains:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "shellunet"

    invoke-static {v0, p1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public disableContentMismatchCheck()V
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string/jumbo v1, "shellunet UnetRequestAdaptor disableContentMismatchCheck"

    .line 447
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    .line 449
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    iget v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    invoke-interface {v0, v1}, Lcom/alibaba/mbg/unet/Request;->setLoadFlagExt(I)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public disableHttp2()V
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string/jumbo v1, "shellunet UnetRequestAdaptor disableHttp2"

    .line 440
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    .line 442
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    iget v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    invoke-interface {v0, v1}, Lcom/alibaba/mbg/unet/Request;->setLoadFlagExt(I)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public disableZstd()V
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string/jumbo v1, "shellunet UnetRequestAdaptor disableZstd"

    .line 454
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    .line 456
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    iget v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    invoke-interface {v0, v1}, Lcom/alibaba/mbg/unet/Request;->setLoadFlagExt(I)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public fillHeadersWithZstdSupport()V
    .locals 5

    .line 420
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 421
    iget-boolean v2, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mZstdSupportFlag:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Accept-Encoding"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const-string v2, ""

    goto :goto_1

    .line 424
    :cond_1
    invoke-virtual {v1}, Lcom/uc/base/net/adaptor/Headers$Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 425
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillHeader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    .line 426
    invoke-interface {v4}, Lcom/alibaba/mbg/unet/Request;->getURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "shellunet"

    .line 425
    invoke-static {v4, v3}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v3, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-virtual {v1}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lcom/alibaba/mbg/unet/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAllHeaders()[Lcom/uc/base/net/adaptor/Headers$Header;
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string v1, "UnetRequestAdaptor getAllHeaders"

    .line 255
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/uc/base/net/adaptor/Headers$Header;

    .line 258
    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/uc/base/net/adaptor/Headers$Header;

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lcom/uc/base/net/adaptor/Headers$Header;
    .locals 4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor getHeaders :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 310
    invoke-virtual {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 311
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 315
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/uc/base/net/adaptor/Headers$Header;

    .line 316
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/uc/base/net/adaptor/Headers$Header;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Request;->getHttpMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string v1, "UnetRequestAdaptor getUrl :"

    .line 85
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mInitURL:Ljava/lang/String;

    return-object v0
.end method

.method public ignoreSSLErrorIfOccurs()V
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string/jumbo v1, "shellunet UnetRequestAdaptor ignoreSSLErrorIfOccurs"

    .line 433
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    .line 435
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    iget v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mLoadFlags:I

    invoke-interface {v0, v1}, Lcom/alibaba/mbg/unet/Request;->setLoadFlagExt(I)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public isUseBackupDnsIp()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mIsUseBackupIp:Z

    return v0
.end method

.method public isZstdSupport()Z
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mZstdSupportFlag:Z

    return v0
.end method

.method public recordUseBackupDnsIp()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeHeader(Lcom/uc/base/net/adaptor/Headers$Header;)V
    .locals 2

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor removeHeader:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/base/net/adaptor/Headers$Header;

    if-ne v1, p1, :cond_0

    .line 290
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor removeHeaders :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAcceptEncoding(Ljava/lang/String;)V
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor setAcceptEncoding :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Request;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    .line 351
    invoke-virtual {p0, v0, p1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->updateHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoFollowRedirect(Z)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/Request;->setAutoFollowRedirect(Z)V

    return-void
.end method

.method public setBodyProvider(Ljava/io/InputStream;J)V
    .locals 2

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor setBodyProvider by InputStream len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/mbg/unet/Request;->setUploadDataProvider(Ljava/io/InputStream;J)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public setBodyProvider(Ljava/lang/String;)V
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor setBodyProvider pathUrl :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/Request;->setUploadDataProvider(Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public setBodyProvider([B)V
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string v1, "UnetRequestAdaptor setBodyProvider :"

    .line 243
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/Request;->setUploadDataProvider([B)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/Request;->setConnectTimeout(I)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor setContentType :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    .line 361
    invoke-virtual {p0, v0, p1}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->updateHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCookieEnable(Z)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/Request;->setCookieEnable(Z)V

    return-void
.end method

.method public setLogTag(Ljava/lang/String;)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/Request;->setLogTag(Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor setMethod :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/Request;->setHttpMethod(Ljava/lang/String;)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method

.method public setUseBackupIp(Z)V
    .locals 0

    .line 376
    iput-boolean p1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mIsUseBackupIp:Z

    return-void
.end method

.method public setZstdSupport(Z)Z
    .locals 2

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setZstdSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v1}, Lcom/alibaba/mbg/unet/Request;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iput-boolean p1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mZstdSupportFlag:Z

    .line 383
    iget-boolean p1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mZstdSupportFlag:Z

    if-nez p1, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->disableZstd()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public start()Lcom/alibaba/mbg/unet/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/mbg/unet/RequestException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->fillHeadersWithZstdSupport()V

    .line 72
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Request;->start()Lcom/alibaba/mbg/unet/Response;

    move-result-object v0

    return-object v0
.end method

.method public start(Lcom/alibaba/mbg/unet/Request$Callback;)V
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor start Request :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->fillHeadersWithZstdSupport()V

    .line 60
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Request;->disableCache()Lcom/alibaba/mbg/unet/Request;

    .line 61
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/Request;->start(Lcom/alibaba/mbg/unet/Request$Callback;)V

    return-void
.end method

.method public start(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->fillHeadersWithZstdSupport()V

    .line 66
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0}, Lcom/alibaba/mbg/unet/Request;->disableCache()Lcom/alibaba/mbg/unet/Request;

    .line 67
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/mbg/unet/Request;->start(Ljava/util/concurrent/Executor;Lcom/alibaba/mbg/unet/Request$Callback;)V

    return-void
.end method

.method public updateHeader(Lcom/uc/base/net/adaptor/Headers$Header;)V
    .locals 5

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor updateHeader no impl in unet. header :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 172
    invoke-virtual {p1}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 177
    invoke-virtual {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/uc/base/net/adaptor/Headers$Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/uc/base/net/adaptor/Headers$Header;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    new-instance v1, Lcom/uc/base/net/adaptor/Headers$Header;

    invoke-virtual {p1}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/uc/base/net/adaptor/Headers$Header;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/uc/base/net/adaptor/Headers$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public updateHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnetRequestAdaptor updateHeader no impl in unet. key :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "shellunet"

    invoke-static {v1, v0}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/base/net/adaptor/Headers$Header;

    .line 151
    invoke-virtual {v2}, Lcom/uc/base/net/adaptor/Headers$Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {v2, p2}, Lcom/uc/base/net/adaptor/Headers$Header;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mHeaders:Ljava/util/List;

    new-instance v1, Lcom/uc/base/net/adaptor/Headers$Header;

    invoke-direct {v1, p1, p2}, Lcom/uc/base/net/adaptor/Headers$Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public useSyncRequestTimeout(I)V
    .locals 2

    const-string/jumbo v0, "shellunet"

    const-string/jumbo v1, "shellunet UnetRequestAdaptor useSyncRequestTimeout setRequestTimeout"

    .line 407
    invoke-static {v0, v1}, Lcom/uc/base/net/unet/util/NetLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/uc/base/net/unet/adaptor/UnetRequestAdaptor;->mUnetRequest:Lcom/alibaba/mbg/unet/Request;

    invoke-interface {v0, p1}, Lcom/alibaba/mbg/unet/Request;->setRequestTimeout(I)Lcom/alibaba/mbg/unet/Request;

    return-void
.end method
