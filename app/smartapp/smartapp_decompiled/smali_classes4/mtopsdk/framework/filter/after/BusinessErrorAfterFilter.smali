.class public Lmtopsdk/framework/filter/after/BusinessErrorAfterFilter;
.super Ljava/lang/Object;
.source "BusinessErrorAfterFilter.java"

# interfaces
.implements Lmtopsdk/framework/filter/IAfterFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.BusinessErrorAfterFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public doAfter(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 4

    .line 27
    iget-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 29
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    const-string v2, "STOP"

    const/16 v3, 0x130

    if-ne v3, v1, :cond_0

    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    if-eqz v1, :cond_0

    .line 30
    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    iget-object v1, v1, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v1, :cond_0

    .line 32
    iput-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 33
    invoke-static {p1}, Lmtopsdk/framework/util/FilterUtils;->handleExceptionCallBack(Lmtopsdk/framework/domain/MtopContext;)V

    return-object v2

    .line 39
    :cond_0
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "ANDROID_SYS_JSONDATA_BLANK"

    .line 40
    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    const-string v1, "\u8fd4\u56deJSONDATA\u4e3a\u7a7a"

    .line 41
    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 42
    invoke-static {p1}, Lmtopsdk/framework/util/FilterUtils;->handleExceptionCallBack(Lmtopsdk/framework/domain/MtopContext;)V

    return-object v2

    .line 47
    :cond_1
    invoke-static {v0}, Lmtopsdk/framework/util/FilterUtils;->parseRetCodeFromHeader(Lmtopsdk/mtop/domain/MtopResponse;)V

    const-string p1, "CONTINUE"

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mtopsdk.BusinessErrorAfterFilter"

    return-object v0
.end method
