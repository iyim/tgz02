.class public Lcom/aliyun/ccp/api/response/BasePageResponse;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "BasePageResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected nextMarker:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "next_marker"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getNextMarker()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/BasePageResponse;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public setNextMarker(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/BasePageResponse;->nextMarker:Ljava/lang/String;

    return-void
.end method
