.class public Lcom/aliyun/oss/model/SetBucketCORSRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetBucketCORSRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;
    }
.end annotation


# static fields
.field private static ALL_ALLOWED_METHODS:[Ljava/lang/String; = null

.field private static ASTERISK:C = '*'

.field private static MAX_CORS_RULE_LIMIT:I = 0xa


# instance fields
.field private corsRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "GET"

    const-string v1, "PUT"

    const-string v2, "DELETE"

    const-string v3, "POST"

    const-string v4, "HEAD"

    .line 29
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/oss/model/SetBucketCORSRequest;->ALL_ALLOWED_METHODS:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest;->corsRules:Ljava/util/List;

    return-void
.end method

.method private checkCorsValidity(Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;)V
    .locals 4

    if-eqz p1, :cond_b

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest;->corsRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/aliyun/oss/model/SetBucketCORSRequest;->MAX_CORS_RULE_LIMIT:I

    if-ge v0, v1, :cond_a

    .line 52
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 57
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 62
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    invoke-static {v1}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->countOfAsterisk(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At most one \'*\' wildcard in allowd origin."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 70
    invoke-static {v1}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->isAllowedMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported method "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", (GET,PUT,DELETE,POST,HEAD)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedHeaders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    invoke-static {v1}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->countOfAsterisk(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v2, :cond_4

    goto :goto_2

    .line 79
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At most one \'*\' wildcard in allowd header."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_5
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getExposeHeaders()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 85
    invoke-static {v0}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->countOfAsterisk(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_6

    goto :goto_3

    .line 86
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allow to use any \'*\' wildcard in expose header."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void

    .line 58
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required field \'AllowedMethod\' should not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required field \'AllowedOrigins\' should not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "One bucket not allowed exceed ten items of CORS Rules."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "corsRule should not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private static countOfAsterisk(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-string v1, ""

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    .line 101
    :cond_1
    sget-char v3, Lcom/aliyun/oss/model/SetBucketCORSRequest;->ASTERISK:C

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v3, 0x1

    :cond_2
    if-eq v3, v4, :cond_3

    if-lt v0, v1, :cond_1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v0
.end method

.method private static isAllowedMethod(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, ""

    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    sget-object v1, Lcom/aliyun/oss/model/SetBucketCORSRequest;->ALL_ALLOWED_METHODS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 117
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public addCorsRule(Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->checkCorsValidity(Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;)V

    .line 39
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest;->corsRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearCorsRules()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest;->corsRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getCorsRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest;->corsRules:Ljava/util/List;

    return-object v0
.end method

.method public setCorsRules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/aliyun/oss/model/SetBucketCORSRequest;->MAX_CORS_RULE_LIMIT:I

    if-gt v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest;->corsRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 138
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketCORSRequest;->corsRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 134
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "One bucket not allowed exceed ten items of CORS Rules."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "corsRules should not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
