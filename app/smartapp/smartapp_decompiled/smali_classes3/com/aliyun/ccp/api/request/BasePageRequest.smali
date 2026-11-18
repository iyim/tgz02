.class public Lcom/aliyun/ccp/api/request/BasePageRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "BasePageRequest.java"


# instance fields
.field private limit:Ljava/lang/Integer;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "limit"
    .end annotation
.end field

.field private marker:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "marker"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getLimit()Ljava/lang/Integer;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/BasePageRequest;->limit:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/BasePageRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public setLimit(Ljava/lang/Integer;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/BasePageRequest;->limit:Ljava/lang/Integer;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/BasePageRequest;->marker:Ljava/lang/String;

    return-void
.end method
