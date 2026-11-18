.class public Lcom/aliyun/ccp/api/response/consent/ListConsentResponse;
.super Lcom/aliyun/ccp/api/response/BasePageResponse;
.source "ListConsentResponse.java"


# instance fields
.field private items:Ljava/util/List;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/ccp/api/model/ConsentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BasePageResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
