.class final Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;
.super Ljava/lang/Object;
.source "MtopServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;
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
.field private mApiName:Ljava/lang/String;

.field private mNeedEncode:Z

.field private mNeedSession:Z

.field private mVersion:Ljava/lang/String;

.field final method:Ljava/lang/reflect/Method;

.field final mtopService:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;

.field public outClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field paramsKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public request:Ljava/lang/Object;

.field responseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->mtopService:Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceImpl;

    .line 55
    iput-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    return-void
.end method

.method private parserRequest(Lcom/alibaba/ailabs/tg/network/annotation/Request;)V
    .locals 4

    .line 102
    invoke-interface {p1}, Lcom/alibaba/ailabs/tg/network/annotation/Request;->value()[Ljava/lang/Class;

    move-result-object p1

    .line 103
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string p1, "@Request class params illegal"

    .line 104
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    const-class v0, Lmtopsdk/mtop/domain/IMTOPDataObject;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p1, "@Request first class must implement IMTOPDataObject class"

    .line 109
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_1
    const-class v0, Lmtopsdk/mtop/domain/BaseOutDo;

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p1, "@Request second class must extends BaseOutDo class"

    .line 114
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->w(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_2
    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->outClass:Ljava/lang/Class;

    .line 120
    :try_start_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->request:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 122
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public build()Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    const-class v1, Lcom/alibaba/ailabs/tg/network/annotation/Request;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/annotation/Request;

    if-eqz v0, :cond_8

    .line 64
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->parserRequest(Lcom/alibaba/ailabs/tg/network/annotation/Request;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->paramsKeys:Ljava/util/List;

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    const-class v1, Lcom/alibaba/ailabs/tg/network/annotation/Parameters;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/tg/network/annotation/Parameters;

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->paramsKeys:Ljava/util/List;

    invoke-interface {v0}, Lcom/alibaba/ailabs/tg/network/annotation/Parameters;->value()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_3

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 72
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 73
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 74
    instance-of v8, v7, Lcom/alibaba/ailabs/tg/network/annotation/Parameter;

    if-eqz v8, :cond_2

    .line 75
    check-cast v7, Lcom/alibaba/ailabs/tg/network/annotation/Parameter;

    invoke-interface {v7}, Lcom/alibaba/ailabs/tg/network/annotation/Parameter;->value()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    iget-object v5, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->paramsKeys:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid @Parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 87
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/network/mtop/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 90
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_6

    .line 94
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/network/mtop/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/alibaba/ailabs/tg/network/Call;

    if-ne v1, v2, :cond_5

    .line 97
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/network/mtop/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;->responseType:Ljava/lang/reflect/Type;

    .line 98
    new-instance v0, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod;-><init>(Lcom/alibaba/ailabs/tg/network/mtop/MtopServiceMethod$Builder;)V

    return-object v0

    .line 95
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service methods return type must be Call<T>."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Service methods cannot return void."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method return type must not include a type variable or wildcard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no found both @Request annotation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
