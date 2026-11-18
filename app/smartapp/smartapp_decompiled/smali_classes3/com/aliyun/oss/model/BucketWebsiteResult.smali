.class public Lcom/aliyun/oss/model/BucketWebsiteResult;
.super Lcom/aliyun/oss/model/GenericResult;
.source "BucketWebsiteResult.java"


# instance fields
.field private errorDocument:Ljava/lang/String;

.field private indexDocument:Ljava/lang/String;

.field private routingRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/RoutingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public AddRoutingRule(Lcom/aliyun/oss/model/RoutingRule;)V
    .locals 1

    .line 51
    invoke-virtual {p1}, Lcom/aliyun/oss/model/RoutingRule;->ensureRoutingRuleValid()V

    .line 52
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketWebsiteResult;->routingRules:Ljava/util/List;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/BucketWebsiteResult;->routingRules:Ljava/util/List;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketWebsiteResult;->routingRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getErrorDocument()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketWebsiteResult;->errorDocument:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexDocument()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketWebsiteResult;->indexDocument:Ljava/lang/String;

    return-object v0
.end method

.method public getRoutingRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/RoutingRule;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketWebsiteResult;->routingRules:Ljava/util/List;

    return-object v0
.end method

.method public setErrorDocument(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketWebsiteResult;->errorDocument:Ljava/lang/String;

    return-void
.end method

.method public setIndexDocument(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketWebsiteResult;->indexDocument:Ljava/lang/String;

    return-void
.end method
