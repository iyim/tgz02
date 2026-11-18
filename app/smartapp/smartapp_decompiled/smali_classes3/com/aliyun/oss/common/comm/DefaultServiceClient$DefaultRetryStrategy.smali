.class Lcom/aliyun/oss/common/comm/DefaultServiceClient$DefaultRetryStrategy;
.super Lcom/aliyun/oss/common/comm/RetryStrategy;
.source "DefaultServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/common/comm/DefaultServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultRetryStrategy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/aliyun/oss/common/comm/RetryStrategy;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/aliyun/oss/common/comm/DefaultServiceClient$1;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/aliyun/oss/common/comm/DefaultServiceClient$DefaultRetryStrategy;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public shouldRetry(Ljava/lang/Exception;Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/comm/ResponseMessage;I)Z
    .locals 2

    .line 178
    instance-of p2, p1, Lcom/aliyun/oss/ClientException;

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 179
    move-object p2, p1

    check-cast p2, Lcom/aliyun/oss/ClientException;

    invoke-virtual {p2}, Lcom/aliyun/oss/ClientException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ConnectionTimeout"

    .line 180
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SocketTimeout"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConnectionRefused"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "UnknownHost"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SocketException"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "NonRepeatableRequest"

    .line 189
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    :cond_1
    :goto_0
    return p4

    .line 194
    :cond_2
    instance-of p2, p1, Lcom/aliyun/oss/OSSException;

    if-eqz p2, :cond_3

    .line 195
    nop

    nop

    invoke-virtual {p1}, Lcom/aliyun/oss/OSSException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    const-string p2, "InvalidResponse"

    .line 197
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    if-eqz p3, :cond_5

    .line 203
    invoke-virtual {p3}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getStatusCode()I

    move-result p1

    const/16 p2, 0x1f4

    if-eq p1, p2, :cond_4

    const/16 p2, 0x1f7

    if-ne p1, p2, :cond_5

    :cond_4
    return p4

    :cond_5
    return v0
.end method
