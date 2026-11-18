.class public Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;
.super Ljava/lang/Object;
.source "CleanFileUtil.java"


# static fields
.field private static cleanerOrangeConfig:Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static deleteAllConfig(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->deleteFolderFile(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static deleteFolderFile(Ljava/lang/String;)V
    .locals 5

    const-string v0, "deleteFolderFile"

    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    .line 111
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 112
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->deleteFolderFile(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "deleteFileFaild"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file  --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_2

    .line 123
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "deleteDirFaild"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dir  --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static deleteFolderFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "deleteFolderFile"

    .line 144
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 146
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    .line 149
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 150
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->deleteFolderFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "deleteFileFaild"

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file  --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_3

    .line 163
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "deleteDirFaild"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir  --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 171
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static deleteSdCardExceptData()V
    .locals 2

    const-string v0, "/data/media/0/"

    const-string v1, "/data/media/0/Android/data/"

    .line 96
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->deleteFolderFile(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAllOtherSize(Ljava/util/ArrayList;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_2

    .line 25
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 30
    invoke-static {v2}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size == "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/cleaner/util/CacheUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "getAllOtherSize"

    invoke-static {v2, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-wide v0
.end method

.method public static getCleanerOrangeConfig(Z)Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;
    .locals 1

    if-nez p0, :cond_0

    .line 181
    sget-object p0, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->cleanerOrangeConfig:Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    if-eqz p0, :cond_0

    return-object p0

    .line 184
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object p0

    const-string v0, "fUOLuBt9DYIu"

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    const-class v0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    sput-object p0, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->cleanerOrangeConfig:Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    .line 188
    :cond_1
    sget-object p0, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->cleanerOrangeConfig:Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    if-nez p0, :cond_2

    .line 189
    const-class p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    const-string v0, "{\n    \"clearSdCardLevel\":9,\n    \"userPkgList\":[\n        {\n            \"name\":\"MTKLoggerProxy\",\n            \"pkgName\":\"com.mediatek.mtklogger.proxy\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"CaptivePortalLogin\",\n            \"pkgName\":\"com.android.captiveportallogin\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u8054\u7cfb\u4eba\u5b58\u50a8\",\n            \"pkgName\":\"com.android.providers.contacts\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u84dd\u7259\",\n            \"pkgName\":\"com.android.bluetooth\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"MTKLogger\",\n            \"pkgName\":\"com.mediatek.mtklogger\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"Osupdate\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.osupdate\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"Bluetooth MIDI Service\",\n            \"pkgName\":\"com.android.bluetoothmidiservice\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"SysystemUIApk\",\n            \"pkgName\":\"com.android.systemui\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u7cfb\u7edf\u8bbe\u7f6e\",\n            \"pkgName\":\"com.android.settings\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u7cbe\u7075\u901a\u8bdd\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.rtc\",\n            \"apkType\":1001\n        },\n        {\n            \"name\":\"\u8bbe\u7f6e\u5b58\u50a8\",\n            \"pkgName\":\"com.android.providers.settings\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"GenieCook\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.cook\",\n            \"apkType\":1001\n        },\n        {\n            \"name\":\"fireeye2\",\n            \"pkgName\":\"com.alibaba.ailabs.ar.fireeye2\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u4e00\u4f53\u5316\u4f4d\u7f6e\u4fe1\u606f\",\n            \"pkgName\":\"com.android.location.fused\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u7528\u6237\u5b57\u5178\",\n            \"pkgName\":\"com.android.providers.userdictionary\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"Shell\",\n            \"pkgName\":\"com.android.shell\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"VpnDialogs\",\n            \"pkgName\":\"com.android.vpndialogs\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"face\",\n            \"pkgName\":\"com.alibaba.ailabs.ar.face\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u4f53\u9a8c\u8ba1\u5212\",\n            \"pkgName\":\"com.aligenie.ic\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u5f00\u673a\u5f15\u5bfc\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.guide\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u751f\u4ea7\u6d4b\u8bd5\",\n            \"pkgName\":\"com.ailabs.emode\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u8c37\u6b4c\u62fc\u97f3\u8f93\u5165\u6cd5\",\n            \"pkgName\":\"com.google.android.inputmethod.pinyin\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u5b58\u50a8\u7a7a\u95f4\u7ba1\u7406\u5668\",\n            \"pkgName\":\"com.android.storagemanager\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"com.yunos\",\n            \"pkgName\":\"com.yunos\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"MTK Thermal Manager\",\n            \"pkgName\":\"com.mediatek.thermalmanager\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"ProxyHandler\",\n            \"pkgName\":\"com.android.proxyhandler\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u8f6f\u4ef6\u5305\u5b89\u88c5\u7a0b\u5e8f\",\n            \"pkgName\":\"com.android.packageinstaller\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"GenieAlbums\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.albums\",\n            \"apkType\":1001\n        },\n        {\n            \"name\":\"Android Services Library\",\n            \"pkgName\":\"android.ext.services\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u5bc6\u94a5\u94fe\",\n            \"pkgName\":\"com.android.keychain\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"Android Shared Library\",\n            \"pkgName\":\"android.ext.shared\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"com.mediatek\",\n            \"pkgName\":\"com.mediatek\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u8f93\u5165\u8bbe\u5907\",\n            \"pkgName\":\"com.android.inputdevices\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"Android System WebView\",\n            \"pkgName\":\"com.android.webview\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"AliProvision\",\n            \"pkgName\":\"com.yunos.tv.provision\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"UUID\",\n            \"pkgName\":\"com.aliyun.uuid\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u7cbe\u7075\u5c0f\u7a0b\u5e8f\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.webapps\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"Intent Filter Verification Service\",\n            \"pkgName\":\"com.android.statementservice\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"LinkVisualIPC\",\n            \"pkgName\":\"com.aliyun.iotx.linkvisual\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"MTP \u4e3b\u673a\",\n            \"pkgName\":\"com.android.mtp\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"Android \u7cfb\u7edf\",\n            \"pkgName\":\"android\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"monitor\",\n            \"pkgName\":\"com.alibaba.ailabs.ar.monitor\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u8bc1\u4e66\u5b89\u88c5\u7a0b\u5e8f\",\n            \"pkgName\":\"com.android.certinstaller\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"PacProcessor\",\n            \"pkgName\":\"com.android.pacprocessor\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u8f6f\u4ef6\u5305\u6743\u9650\u5e2e\u52a9\u7a0b\u5e8f\",\n            \"pkgName\":\"com.android.defcontainer\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"remotediagnosis\",\n            \"pkgName\":\"com.alira.info\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u5185\u5bb9\u4e0b\u8f7d\u7ba1\u7406\u5668\",\n            \"pkgName\":\"com.android.providers.downloads\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u5185\u5bb9\u4e0b\u8f7d\u7ba1\u7406\u5668\",\n            \"pkgName\":\"com.android.providers.downloads\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u817e\u8baf\u6781\u5149\u8bed\u97f3\",\n            \"pkgName\":\"com.ktcp.aiagent\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u7cbe\u7075\u76f8\u673a\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.camera\",\n            \"apkType\":1001\n        },\n        {\n            \"name\":\"Intermediary\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.intermediary\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"Companion Device Manager\",\n            \"pkgName\":\"com.android.companiondevicemanager\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u5916\u90e8\u5b58\u50a8\u8bbe\u5907\",\n            \"pkgName\":\"com.android.externalstorage\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"android.auto_generated_rro__\",\n            \"pkgName\":\"android.auto_generated_rro__\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u65e5\u5386\u5b58\u50a8\",\n            \"pkgName\":\"com.android.providers.calendar\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u5a92\u4f53\u5b58\u50a8\u8bbe\u5907\",\n            \"pkgName\":\"com.android.providers.media\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u6296\u97f3\",\n            \"pkgName\":\"com.ss.android.ugc.aweme\",\n            \"apkType\":1001\n        },\n        {\n            \"name\":\"\u8292\u679ctv\",\n            \"pkgName\":\"com.mgtv.tv\",\n            \"apkType\":1001\n        },\n        {\n            \"name\":\"bilibili\",\n            \"pkgName\":\"tv.danmaku.bili\",\n            \"apkType\":1001\n        },\n        {\n            \"name\":\"\u54aa\u5495\",\n            \"pkgName\":\"cn.cmvideo.car.play\",\n            \"apkType\":1001\n        },\n        {\n            \"name\":\"\u5b66\u800c\u601d\",\n            \"pkgName\":\"com.xueersi.ott.tmallyxdp\",\n            \"apkType\":1001\n        },\n        {\n            \"name\":\"\u5c0f\u7a0b\u5e8f\u5bb9\u5668\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.webapps\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"ENS\",\n            \"pkgName\":\"com.alibaba.genie.cloudapp\",\n            \"apkType\":1000\n        },\n        {\n            \"name\":\"\u8d85\u7ea7APP\",\n            \"pkgName\":\"com.alibaba.ailabs.genie.smartapp\",\n            \"apkType\":1000\n        }\n    ],\n    \"otherPath\":[\n        \"/sdcard/alipay/\",\n        \"/sdcard/UCDownloads/\",\n        \"/sdcard/com.alibaba.ailabs.genie.smartapp/ulog/\",\n        \"/sdcard/Tencent\",\n        \"/sdcard/com.bilibili.comic\",\n        \"/sdcard/com.bilibili.qing\",\n        \"/sdcard/tv.danmaku.bili\",\n        \"/sdcard/Android/data/com.qiyi.video.speaker/files/app/player/puma/ad_cache/TempFile/Public\"\n    ]\n}"

    invoke-static {v0, p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    sput-object p0, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->cleanerOrangeConfig:Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    .line 191
    :cond_2
    sget-object p0, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->cleanerOrangeConfig:Lcom/alibaba/ailabs/cleaner/bean/CleanerOrangeConfig;

    return-object p0
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 2

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 42
    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFolderSize(Ljava/io/File;)J
    .locals 6

    const-wide/16 v0, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    .line 55
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 56
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 57
    aget-object v4, v2, v3

    invoke-static {v4}, Lcom/alibaba/ailabs/cleaner/util/CleanFileUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v4

    goto :goto_1

    .line 60
    :cond_0
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " size == "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/cleaner/util/CacheUtil;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "getFolderSize"

    invoke-static {v2, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method
