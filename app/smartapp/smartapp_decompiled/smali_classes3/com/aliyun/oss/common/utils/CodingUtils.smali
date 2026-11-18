.class public Lcom/aliyun/oss/common/utils/CodingUtils;
.super Ljava/lang/Object;
.source "CodingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static assertListNotNullOrEmpty(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-static {p0, p1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ParameterListIsEmpty"

    invoke-virtual {v0, p1, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static assertParameterInRange(JJJ)V
    .locals 8

    const/4 v4, 0x1

    const/4 v7, 0x1

    move-wide v0, p0

    move-wide v2, p2

    move-wide v5, p4

    .line 39
    invoke-static/range {v0 .. v7}, Lcom/aliyun/oss/common/utils/CodingUtils;->checkParamRange(JJZJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%d not in valid range [%d, %d]"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    return-void

    .line 33
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ParameterIsNull"

    invoke-virtual {v0, p1, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static assertStringNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 46
    invoke-static {p0, p1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->COMMON_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "ParameterStringIsEmpty"

    invoke-virtual {v0, p1, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static assertTrue(ZLjava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static checkParamRange(JJZJZ)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    if-eqz p7, :cond_1

    cmp-long p4, p2, p0

    if-gtz p4, :cond_0

    cmp-long p2, p0, p5

    if-gtz p2, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-eqz p4, :cond_3

    if-nez p7, :cond_3

    cmp-long p4, p2, p0

    if-gtz p4, :cond_2

    cmp-long p2, p0, p5

    if-gez p2, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    if-nez p4, :cond_5

    if-nez p7, :cond_5

    cmp-long p4, p2, p0

    if-gez p4, :cond_4

    cmp-long p2, p0, p5

    if-gez p2, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    cmp-long p4, p2, p0

    if-gez p4, :cond_6

    cmp-long p2, p0, p5

    if-gtz p2, :cond_6

    return v0

    :cond_6
    return v1
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
