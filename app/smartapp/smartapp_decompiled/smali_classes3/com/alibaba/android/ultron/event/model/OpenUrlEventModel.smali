.class public Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;
.super Ljava/lang/Object;
.source "OpenUrlEventModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field method:Ljava/lang/String;

.field pageType:Ljava/lang/String;

.field params:Lcom/alibaba/fastjson/JSONObject;

.field queryParams:Lcom/alibaba/fastjson/JSONObject;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getPageType()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->pageType:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->params:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getQueryParams()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->queryParams:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->method:Ljava/lang/String;

    return-void
.end method

.method public setPageType(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->pageType:Ljava/lang/String;

    return-void
.end method

.method public setParams(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->params:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setQueryParams(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->queryParams:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/android/ultron/event/model/OpenUrlEventModel;->url:Ljava/lang/String;

    return-void
.end method
