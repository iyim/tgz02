.class final Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;
.super Ljava/lang/Object;
.source "GenieMtopServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field commonParamsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApiName:Ljava/lang/String;

.field private mNeedEncode:Z

.field private mNeedSession:Z

.field private mVersion:Ljava/lang/String;

.field final method:Ljava/lang/reflect/Method;

.field final mtopService:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;

.field public outClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

.field paramsKeys:Ljava/util/List;
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

.field responseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->NONE:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->mtopService:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImplV2;

    .line 64
    iput-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public build()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    const-class v1, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopResponse;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopResponse;

    if-eqz v0, :cond_e

    .line 76
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/network/mtop/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 80
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_c

    .line 84
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/network/mtop/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/alibaba/ailabs/tg/network/Call;

    if-ne v2, v3, :cond_b

    .line 89
    invoke-interface {v0}, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopResponse;->value()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->outClass:Ljava/lang/Class;

    .line 91
    new-instance v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    invoke-direct {v0}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    const-class v2, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopWithAuthInfo;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopWithAuthInfo;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopWithAuthInfo;->value()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfo(Z)Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->authInfo:Ljava/lang/String;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    const-class v3, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopHost;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopHost;

    const-string v3, "mtop.alibaba.aicloud.distributedappsupport.faas.invokeForTurando"

    if-nez v0, :cond_2

    goto :goto_0

    .line 108
    :cond_2
    invoke-interface {v0}, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopHost;->host()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    invoke-interface {v0}, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopHost;->value()Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ServiceType;

    move-result-object v0

    sget-object v4, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ServiceType;->FAAS:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ServiceType;

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"

    move-object v3, v0

    goto :goto_0

    .line 111
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopHost;->host()Ljava/lang/String;

    move-result-object v3

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->setApiName(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    const-class v3, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopApiName;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopApiName;

    if-eqz v0, :cond_a

    .line 123
    invoke-interface {v0}, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopApiName;->value()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 126
    invoke-interface {v0}, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopApiName;->value()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v3, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    iput-object v0, v3, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->fnName:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->paramsKeys:Ljava/util/List;

    .line 133
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->NONE:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 135
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_8

    aget-object v6, v0, v5

    if-eqz v6, :cond_7

    .line 136
    array-length v7, v6

    if-gt v7, v2, :cond_7

    .line 139
    aget-object v7, v6, v4

    instance-of v7, v7, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParametersMap;

    if-eqz v7, :cond_5

    .line 140
    sget-object v0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->MAP:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    .line 141
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->paramsKeys:Ljava/util/List;

    invoke-interface {v0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 143
    :cond_5
    aget-object v7, v6, v4

    instance-of v7, v7, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;

    if-eqz v7, :cond_6

    .line 144
    aget-object v6, v6, v4

    check-cast v6, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;

    .line 145
    sget-object v7, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->PARAMS:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    iput-object v7, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    .line 146
    iget-object v7, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->paramsKeys:Ljava/util/List;

    invoke-interface {v6}, Lcom/alibaba/ailabs/tg/network/annotation/genie/GenieMtopParameters;->value()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 148
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameters must contain GenieMtopParametersMap or GenieMtopParameters annotations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "genieMtopParams can only have one annotation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_8
    :goto_2
    invoke-static {v1}, Lcom/alibaba/ailabs/tg/network/mtop/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    .line 152
    new-instance v0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;-><init>(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod$Builder;)V

    return-object v0

    .line 124
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "@GenieMtopApiName value is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have @GenieMtopApiName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service methods return type must be Call<T>."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service methods cannot return void."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_d
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method return type must not include a type variable or wildcard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no found both @GenieMtopResponse annotation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
