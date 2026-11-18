.class public Lcom/aliyun/oss/model/RoutingRule;
.super Ljava/lang/Object;
.source "RoutingRule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/model/RoutingRule$Redirect;,
        Lcom/aliyun/oss/model/RoutingRule$Protocol;,
        Lcom/aliyun/oss/model/RoutingRule$RedirectType;,
        Lcom/aliyun/oss/model/RoutingRule$Condition;
    }
.end annotation


# instance fields
.field private condition:Lcom/aliyun/oss/model/RoutingRule$Condition;

.field private number:Ljava/lang/Integer;

.field private redirect:Lcom/aliyun/oss/model/RoutingRule$Redirect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    new-instance v0, Lcom/aliyun/oss/model/RoutingRule$Condition;

    invoke-direct {v0}, Lcom/aliyun/oss/model/RoutingRule$Condition;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/RoutingRule;->condition:Lcom/aliyun/oss/model/RoutingRule$Condition;

    .line 399
    new-instance v0, Lcom/aliyun/oss/model/RoutingRule$Redirect;

    invoke-direct {v0}, Lcom/aliyun/oss/model/RoutingRule$Redirect;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/RoutingRule;->redirect:Lcom/aliyun/oss/model/RoutingRule$Redirect;

    return-void
.end method


# virtual methods
.method public ensureRoutingRuleValid()V
    .locals 4

    .line 372
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule;->number:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule;->redirect:Lcom/aliyun/oss/model/RoutingRule$Redirect;

    invoke-virtual {v0}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->ensureRedirectValid()V

    .line 379
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule;->condition:Lcom/aliyun/oss/model/RoutingRule$Condition;

    invoke-virtual {v0}, Lcom/aliyun/oss/model/RoutingRule$Condition;->ensureConditionValid()V

    return-void

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/aliyun/oss/model/RoutingRule;->number:Ljava/lang/Integer;

    aput-object v3, v1, v2

    const-string v2, "RoutingRuleNumberInvalid"

    invoke-static {v2, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCondition()Lcom/aliyun/oss/model/RoutingRule$Condition;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule;->condition:Lcom/aliyun/oss/model/RoutingRule$Condition;

    return-object v0
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule;->number:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule;->redirect:Lcom/aliyun/oss/model/RoutingRule$Redirect;

    return-object v0
.end method

.method public setCondition(Lcom/aliyun/oss/model/RoutingRule$Condition;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule;->condition:Lcom/aliyun/oss/model/RoutingRule$Condition;

    return-void
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule;->number:Ljava/lang/Integer;

    return-void
.end method

.method public setRedirect(Lcom/aliyun/oss/model/RoutingRule$Redirect;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule;->redirect:Lcom/aliyun/oss/model/RoutingRule$Redirect;

    return-void
.end method
