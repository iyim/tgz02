.class public Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;
.super Ljava/lang/Object;
.source "GenieMtopServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public commonParamsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public outClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

.field public paramsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

.field public requestMethod:Ljava/lang/String;

.field public responseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder<",
            "TR;TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->NONE:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    .line 37
    iget-object v0, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->responseType:Ljava/lang/reflect/Type;

    .line 38
    iget-object v0, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->commonParamsKeys:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->commonParamsKeys:Ljava/util/List;

    .line 39
    iget-object v0, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    .line 40
    iget-object v0, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->outClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->outClass:Ljava/lang/Class;

    .line 41
    iget-object v0, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->requestMethod:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->requestMethod:Ljava/lang/String;

    .line 42
    iget-object v0, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->paramsKeys:Ljava/util/List;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->paramsKeys:Ljava/util/List;

    .line 43
    iget-object p1, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    return-void
.end method
