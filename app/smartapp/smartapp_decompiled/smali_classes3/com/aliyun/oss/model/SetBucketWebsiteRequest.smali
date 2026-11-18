.class public Lcom/aliyun/oss/model/SetBucketWebsiteRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetBucketWebsiteRequest.java"


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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketWebsiteRequest;->routingRules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public AddRoutingRule(Lcom/aliyun/oss/model/RoutingRule;)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Lcom/aliyun/oss/model/RoutingRule;->ensureRoutingRuleValid()V

    .line 71
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketWebsiteRequest;->routingRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getErrorDocument()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketWebsiteRequest;->errorDocument:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexDocument()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketWebsiteRequest;->indexDocument:Ljava/lang/String;

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

    .line 53
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketWebsiteRequest;->routingRules:Ljava/util/List;

    return-object v0
.end method

.method public setErrorDocument(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketWebsiteRequest;->errorDocument:Ljava/lang/String;

    return-void
.end method

.method public setIndexDocument(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketWebsiteRequest;->indexDocument:Ljava/lang/String;

    return-void
.end method

.method public setRoutingRules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/RoutingRule;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/oss/model/RoutingRule;

    .line 62
    invoke-virtual {v1}, Lcom/aliyun/oss/model/RoutingRule;->ensureRoutingRuleValid()V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketWebsiteRequest;->routingRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketWebsiteRequest;->routingRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "routingRules should not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
