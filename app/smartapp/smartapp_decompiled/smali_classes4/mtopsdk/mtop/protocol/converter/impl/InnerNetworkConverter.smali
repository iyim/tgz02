.class public Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;
.super Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter;
.source "InnerNetworkConverter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.InnerNetworkConverter"

.field private static final headerConversionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    .line 21
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-sid"

    const-string v2, "sid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-t"

    const-string v2, "t"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-appkey"

    const-string v2, "appKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-ttid"

    const-string v2, "ttid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-devid"

    const-string v2, "deviceId"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-utdid"

    const-string v2, "utdid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-sign"

    const-string v2, "sign"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-nq"

    const-string v2, "nq"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-nettype"

    const-string v2, "netType"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-pv"

    const-string v2, "pv"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-uid"

    const-string v2, "uid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-umt"

    const-string v2, "umt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-reqbiz-ext"

    const-string v2, "reqbiz-ext"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-mini-wua"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-app-conf-v"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-exttype"

    const-string v2, "exttype"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-extdata"

    const-string v2, "extdata"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-features"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-page-name"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-page-url"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-page-mab"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-app-ver"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-orange-q"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "user-agent"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-c-traceid"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "f-refer"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    const-string v1, "x-netinfo"

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lmtopsdk/mtop/protocol/converter/impl/AbstractNetworkConverter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected getHeaderConversionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lmtopsdk/mtop/protocol/converter/impl/InnerNetworkConverter;->headerConversionMap:Ljava/util/Map;

    return-object v0
.end method
