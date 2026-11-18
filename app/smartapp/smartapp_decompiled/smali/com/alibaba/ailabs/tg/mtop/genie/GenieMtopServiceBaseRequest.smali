.class public Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;
.super Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;
.source "GenieMtopServiceBaseRequest.java"


# instance fields
.field public args:Ljava/lang/String;

.field public authInfo:Ljava/lang/String;

.field public fnName:Ljava/lang/String;

.field public fnVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/request/BaseRequest;-><init>()V

    const-string v0, "latest"

    .line 23
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->fnVersion:Ljava/lang/String;

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->args:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->authInfo:Ljava/lang/String;

    const-string v0, "1.0"

    .line 16
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->setVersion(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->setNeedSession(Z)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->setNeedEcode(Z)V

    return-void
.end method


# virtual methods
.method public buildData()V
    .locals 3

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->fnName:Ljava/lang/String;

    const-string v2, "apiName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->fnVersion:Ljava/lang/String;

    const-string v2, "fnVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->args:Ljava/lang/String;

    const-string v2, "args"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->authInfo:Ljava/lang/String;

    const-string v2, "authInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->setData(Ljava/lang/Object;)V

    return-void
.end method
