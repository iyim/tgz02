.class public Lcom/aliyun/oss/common/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static errorCodeFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "com.aliyun.oss"

    .line 35
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->log:Lorg/apache/commons/logging/Log;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->errorCodeFilterList:Ljava/util/List;

    .line 41
    sget-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->errorCodeFilterList:Ljava/util/List;

    const-string v1, "NoSuchBucket"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->errorCodeFilterList:Ljava/util/List;

    const-string v1, "NoSuchKey"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->errorCodeFilterList:Ljava/util/List;

    const-string v1, "NoSuchUpload"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->errorCodeFilterList:Ljava/util/List;

    const-string v1, "NoSuchCORSConfiguration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->errorCodeFilterList:Ljava/util/List;

    const-string v1, "NoSuchWebsiteConfiguration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->errorCodeFilterList:Ljava/util/List;

    const-string v1, "NoSuchLifecycle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getLog()Lorg/apache/commons/logging/Log;
    .locals 1

    .line 50
    sget-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method public static logException(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ExType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TExType;)V"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p0, p1

    check-cast p0, Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    instance-of v0, p1, Lcom/aliyun/oss/ServiceException;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/aliyun/oss/common/utils/LogUtils;->errorCodeFilterList:Ljava/util/List;

    nop

    nop

    invoke-virtual {p1}, Lcom/aliyun/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    sget-object p1, Lcom/aliyun/oss/common/utils/LogUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p0}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_0
    sget-object p1, Lcom/aliyun/oss/common/utils/LogUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {p1, p0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
