.class public Lcom/alibaba/ailabs/genie/logger/sdk/UlogConfig;
.super Ljava/lang/Object;
.source "UlogConfig.java"


# static fields
.field private static final BUILD_TYPE_ENG:Ljava/lang/String; = "eng"

.field private static final TAG:Ljava/lang/String; = "UlogConfig"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initULogUpload(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "ro.build.type"

    .line 32
    invoke-static {v0}, Lcom/ta/audid/utils/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "eng"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initULogUpload, isDebug:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ";packageName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UlogConfig"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v1, Lcom/uc/sdk/ulog/ULogSetup$Builder;

    invoke-direct {v1, p0}, Lcom/uc/sdk/ulog/ULogSetup$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/uc/sdk/ulog/ULogSetup$Builder;->isDebug(Z)Lcom/uc/sdk/ulog/ULogSetup$Builder;

    move-result-object v4

    .line 47
    invoke-virtual {v4, v3}, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logSyncWrite(Z)Lcom/uc/sdk/ulog/ULogSetup$Builder;

    move-result-object v3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    .line 49
    :goto_1
    invoke-virtual {v3, v0}, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logLevel(I)Lcom/uc/sdk/ulog/ULogSetup$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logFileDir(Ljava/lang/String;)Lcom/uc/sdk/ulog/ULogSetup$Builder;

    move-result-object v0

    const-wide/32 v3, 0x500000

    .line 57
    invoke-virtual {v0, v3, v4}, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxFileSize(J)Lcom/uc/sdk/ulog/ULogSetup$Builder;

    move-result-object v0

    const/4 v3, 0x7

    .line 59
    invoke-virtual {v0, v3}, Lcom/uc/sdk/ulog/ULogSetup$Builder;->maxLogAliveDay(I)Lcom/uc/sdk/ulog/ULogSetup$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v2}, Lcom/uc/sdk/ulog/ULogSetup$Builder;->logEnable(Z)Lcom/uc/sdk/ulog/ULogSetup$Builder;

    move-result-object v0

    const-string v2, ""

    .line 63
    invoke-virtual {v0, v2}, Lcom/uc/sdk/ulog/ULogSetup$Builder;->publicKey(Ljava/lang/String;)Lcom/uc/sdk/ulog/ULogSetup$Builder;

    .line 65
    invoke-virtual {v1}, Lcom/uc/sdk/ulog/ULogSetup$Builder;->build()Lcom/uc/sdk/ulog/ULogSetup;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 69
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/ProductUtils;->getSerialNum()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sn"

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v2, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/logger/bean/BasicEnvInfo;->getBasicEnvInfoMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 74
    new-instance v2, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 75
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/logger/bean/DeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 77
    new-instance v2, Lcom/ulog/uploader/ULogUploadSetup$Builder;

    invoke-direct {v2, p0}, Lcom/ulog/uploader/ULogUploadSetup$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v2, v0}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->ulogSetup(Lcom/uc/sdk/ulog/ULogSetup;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object v0

    const-string v2, "GenieLogger"

    .line 81
    invoke-virtual {v0, v2}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->projectName(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object v0

    const-string v2, "1.0.42-SNAPSHOT"

    .line 83
    invoke-virtual {v0, v2}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appVersion(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object v0

    const-string v2, "1610433343388"

    .line 85
    invoke-virtual {v0, v2}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->buildSeq(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object v0

    .line 87
    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->utdId(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object p0

    const-string v0, "genielogger"

    .line 89
    invoke-virtual {p0, v0}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appId(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object p0

    const-string/jumbo v0, "xb@!$w#RSP@ZLFK4"

    .line 91
    invoke-virtual {p0, v0}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSecret(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object p0

    const-string v0, "beta"

    .line 93
    invoke-virtual {p0, v0}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->appSubVersion(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object p0

    const-string v0, "https://px.effirst.com/api/v1/crash/upload"

    .line 95
    invoke-virtual {p0, v0}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->uploadUrl(Ljava/lang/String;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object p0

    .line 97
    invoke-virtual {p0, v1}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->extraInfo(Ljava/util/LinkedHashMap;)Lcom/ulog/uploader/ULogUploadSetup$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lcom/ulog/uploader/ULogUploadSetup$Builder;->build()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/ulog/uploader/ULogUploadSetup;->init(Lcom/ulog/uploader/ULogUploadSetup;)Lcom/ulog/uploader/ULogUploadSetup;

    .line 101
    invoke-static {}, Lcom/ulog/uploader/ULogUploadSetup;->with()Lcom/ulog/uploader/ULogUploadSetup;

    move-result-object p0

    new-instance v0, Lcom/alibaba/ailabs/genie/logger/sdk/UlogConfig$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/UlogConfig$1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/ulog/uploader/ULogUploadSetup;->setDefaultUploadCallback(Lcom/ulog/uploader/callback/ULogUploadCallback;)V

    return-void
.end method
