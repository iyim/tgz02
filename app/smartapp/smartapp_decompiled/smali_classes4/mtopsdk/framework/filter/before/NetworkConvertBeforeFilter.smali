.class public Lmtopsdk/framework/filter/before/NetworkConvertBeforeFilter;
.super Ljava/lang/Object;
.source "NetworkConvertBeforeFilter.java"

# interfaces
.implements Lmtopsdk/framework/filter/IBeforeFilter;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkConvertBeforeFilter"


# instance fields
.field private networkConverter:Lmtopsdk/mtop/protocol/converter/INetworkConverter;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/protocol/converter/INetworkConverter;)V
    .locals 0
    .param p1    # Lmtopsdk/mtop/protocol/converter/INetworkConverter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lmtopsdk/framework/filter/before/NetworkConvertBeforeFilter;->networkConverter:Lmtopsdk/mtop/protocol/converter/INetworkConverter;

    return-void
.end method


# virtual methods
.method public doBefore(Lmtopsdk/framework/domain/MtopContext;)Ljava/lang/String;
    .locals 5

    .line 39
    iget-object v0, p0, Lmtopsdk/framework/filter/before/NetworkConvertBeforeFilter;->networkConverter:Lmtopsdk/mtop/protocol/converter/INetworkConverter;

    invoke-interface {v0, p1}, Lmtopsdk/mtop/protocol/converter/INetworkConverter;->convert(Lmtopsdk/framework/domain/MtopContext;)Lmtopsdk/network/domain/Request;

    move-result-object v0

    .line 41
    iput-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->networkRequest:Lmtopsdk/network/domain/Request;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v1, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ANDROID_SYS_NETWORK_REQUEST_CONVERT_ERROR"

    const-string v4, "\u7f51\u7edcRequest\u8f6c\u6362\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lmtopsdk/framework/domain/MtopContext;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 45
    invoke-static {p1}, Lmtopsdk/framework/util/FilterUtils;->handleExceptionCallBack(Lmtopsdk/framework/domain/MtopContext;)V

    const-string p1, "STOP"

    return-object p1

    :cond_0
    const-string p1, "CONTINUE"

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "mtopsdk.NetworkConvertBeforeFilter"

    return-object v0
.end method
