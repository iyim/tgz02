.class public abstract Lcom/aliyun/oss/model/WebServiceRequest;
.super Ljava/lang/Object;
.source "WebServiceRequest.java"


# static fields
.field public static final NOOP:Lcom/aliyun/oss/model/WebServiceRequest;


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progressListener:Lcom/aliyun/oss/event/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/aliyun/oss/model/WebServiceRequest$1;

    invoke-direct {v0}, Lcom/aliyun/oss/model/WebServiceRequest$1;-><init>()V

    sput-object v0, Lcom/aliyun/oss/model/WebServiceRequest;->NOOP:Lcom/aliyun/oss/model/WebServiceRequest;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/aliyun/oss/event/ProgressListener;->NOOP:Lcom/aliyun/oss/event/ProgressListener;

    iput-object v0, p0, Lcom/aliyun/oss/model/WebServiceRequest;->progressListener:Lcom/aliyun/oss/event/ProgressListener;

    .line 33
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/WebServiceRequest;->parameters:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/WebServiceRequest;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/aliyun/oss/model/WebServiceRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/aliyun/oss/model/WebServiceRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
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

    .line 65
    iget-object v0, p0, Lcom/aliyun/oss/model/WebServiceRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
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

    .line 53
    iget-object v0, p0, Lcom/aliyun/oss/model/WebServiceRequest;->parameters:Ljava/util/Map;

    return-object v0
.end method

.method public getProgressListener()Lcom/aliyun/oss/event/ProgressListener;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/aliyun/oss/model/WebServiceRequest;->progressListener:Lcom/aliyun/oss/event/ProgressListener;

    return-object v0
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/aliyun/oss/model/WebServiceRequest;->headers:Ljava/util/Map;

    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/aliyun/oss/model/WebServiceRequest;->parameters:Ljava/util/Map;

    return-void
.end method

.method public setProgressListener(Lcom/aliyun/oss/event/ProgressListener;)V
    .locals 0

    if-nez p1, :cond_0

    .line 37
    sget-object p1, Lcom/aliyun/oss/event/ProgressListener;->NOOP:Lcom/aliyun/oss/event/ProgressListener;

    :cond_0
    iput-object p1, p0, Lcom/aliyun/oss/model/WebServiceRequest;->progressListener:Lcom/aliyun/oss/event/ProgressListener;

    return-void
.end method

.method public withProgressListener(Lcom/aliyun/oss/event/ProgressListener;)Lcom/aliyun/oss/model/WebServiceRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/aliyun/oss/model/WebServiceRequest;",
            ">(",
            "Lcom/aliyun/oss/event/ProgressListener;",
            ")TT;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/WebServiceRequest;->setProgressListener(Lcom/aliyun/oss/event/ProgressListener;)V

    return-object p0
.end method
