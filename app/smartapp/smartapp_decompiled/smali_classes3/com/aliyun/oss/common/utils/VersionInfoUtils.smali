.class public Lcom/aliyun/oss/common/utils/VersionInfoUtils;
.super Ljava/lang/Object;
.source "VersionInfoUtils.java"


# static fields
.field private static final USER_AGENT_PREFIX:Ljava/lang/String; = "aliyun-sdk-java"

.field private static final VERSION_INFO_FILE:Ljava/lang/String; = "versioninfo.properties"

.field private static defaultUserAgent:Ljava/lang/String;

.field private static version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 3

    .line 44
    sget-object v0, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->defaultUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aliyun-sdk-java/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "os.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->defaultUserAgent:Ljava/lang/String;

    .line 49
    :cond_0
    sget-object v0, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->defaultUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->initializeVersion()V

    .line 40
    :cond_0
    sget-object v0, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->version:Ljava/lang/String;

    return-object v0
.end method

.method private static initializeVersion()V
    .locals 2

    .line 53
    const-class v0, Lcom/aliyun/oss/common/utils/VersionInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "versioninfo.properties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 54
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "version"

    .line 61
    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->version:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "versioninfo.properties not found on classpath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "Unable to load version information for the running SDK: "

    .line 63
    invoke-static {v1, v0}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "unknown-version"

    .line 64
    sput-object v0, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->version:Ljava/lang/String;

    :goto_1
    return-void
.end method
