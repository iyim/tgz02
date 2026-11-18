.class public Lcom/alibaba/analytics/utils/PhoneInfoUtils2;
.super Ljava/lang/Object;
.source "PhoneInfoUtils2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {p0}, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->getImeiBySystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {p0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lcom/alibaba/analytics/utils/PhoneInfoUtils2;->getUniqueID()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getImsi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {p0}, Lcom/alibaba/analytics/utils/PhoneInfoUtils;->getImsiBySystem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 60
    invoke-static {p0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/alibaba/analytics/utils/PhoneInfoUtils2;->getUniqueID()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final getUniqueID()Ljava/lang/String;
    .locals 7

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    .line 11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-int v0, v2

    .line 12
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    .line 13
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    .line 14
    invoke-static {v1}, Lcom/alibaba/analytics/utils/IntUtils;->getBytes(I)[B

    move-result-object v1

    .line 15
    invoke-static {v0}, Lcom/alibaba/analytics/utils/IntUtils;->getBytes(I)[B

    move-result-object v0

    .line 16
    invoke-static {v2}, Lcom/alibaba/analytics/utils/IntUtils;->getBytes(I)[B

    move-result-object v2

    .line 17
    invoke-static {v3}, Lcom/alibaba/analytics/utils/IntUtils;->getBytes(I)[B

    move-result-object v3

    const/16 v4, 0x10

    .line 18
    new-array v4, v4, [B

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 19
    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    invoke-static {v0, v6, v4, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x8

    .line 21
    invoke-static {v2, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xc

    .line 22
    invoke-static {v3, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    invoke-static {v4}, Lcom/alibaba/analytics/utils/Base64_2;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
