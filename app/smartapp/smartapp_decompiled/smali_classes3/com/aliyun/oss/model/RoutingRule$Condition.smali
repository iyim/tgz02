.class public Lcom/aliyun/oss/model/RoutingRule$Condition;
.super Ljava/lang/Object;
.source "RoutingRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/RoutingRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# instance fields
.field private httpErrorCodeReturnedEquals:Ljava/lang/Integer;

.field private keyPrefixEquals:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public ensureConditionValid()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getHttpErrorCodeReturnedEquals()Ljava/lang/Integer;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Condition;->httpErrorCodeReturnedEquals:Ljava/lang/Integer;

    return-object v0
.end method

.method public getKeyPrefixEquals()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/aliyun/oss/model/RoutingRule$Condition;->keyPrefixEquals:Ljava/lang/String;

    return-object v0
.end method

.method public setHttpErrorCodeReturnedEquals(Ljava/lang/Integer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 59
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Condition;->httpErrorCodeReturnedEquals:Ljava/lang/Integer;

    return-void

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "HttpErrorCodeReturnedEquals should be greater than 0"

    aput-object v2, v0, v1

    const-string v1, "HttpErrorCodeReturnedEqualsInvalid"

    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setKeyPrefixEquals(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/aliyun/oss/model/RoutingRule$Condition;->keyPrefixEquals:Ljava/lang/String;

    return-void
.end method
