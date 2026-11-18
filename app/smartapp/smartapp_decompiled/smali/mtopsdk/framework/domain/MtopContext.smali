.class public Lmtopsdk/framework/domain/MtopContext;
.super Ljava/lang/Object;
.source "MtopContext.java"


# instance fields
.field public apiId:Lmtopsdk/mtop/common/ApiID;

.field public baseUrl:Ljava/lang/String;

.field public mtopBuilder:Lmtopsdk/mtop/intf/MtopBuilder;

.field public mtopInstance:Lmtopsdk/mtop/intf/Mtop;

.field public mtopListener:Lmtopsdk/mtop/common/MtopListener;

.field public mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

.field public mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field public networkRequest:Lmtopsdk/network/domain/Request;

.field public networkResponse:Lmtopsdk/network/domain/Response;

.field public property:Lmtopsdk/mtop/common/MtopNetworkProp;

.field public protocolParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public responseSource:Lmtopsdk/mtop/domain/ResponseSource;

.field public seqNo:Ljava/lang/String;

.field public stats:Lmtopsdk/mtop/util/MtopStatistics;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    return-void
.end method
