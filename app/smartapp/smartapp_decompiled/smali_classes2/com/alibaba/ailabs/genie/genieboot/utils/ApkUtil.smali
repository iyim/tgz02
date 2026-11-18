.class public Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;
.super Ljava/lang/Object;
.source "ApkUtil.java"


# static fields
.field private static final BOOT_VIDEONAME:Ljava/lang/String; = "bootvideo.mp4"

.field private static final SHUTDOWN_VIDEONAME:Ljava/lang/String; = "shutdown.mp4"

.field private static final TAG:Ljava/lang/String; = "BootPowerSetting"

.field private static mPreinstalled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0

    .line 18
    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->checkMD5ByFile(Ljava/io/File;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkLocalFileIsExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 57
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLocalFileIsExists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BootPowerSetting"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 61
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/misc/Md5Util;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLocalFileIsExists getFileMD5:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 67
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static checkMD5ByFile(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "BootPowerSetting"

    .line 79
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/utils/misc/Md5Util;->getFileMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMD5ByFile:---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "cloundMd5:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "1"

    if-eqz p2, :cond_0

    .line 84
    :try_start_1
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->setShutdownVideoValues(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->setBootVideoValues(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static startApkService()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 31
    sget-boolean v0, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->mPreinstalled:Z

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->startPreInstallJobService()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static startDownloadVideoService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 101
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "1"

    const-string v2, "startDownloadVideoService "

    const-string v3, "0"

    const-string v4, "BootPowerSetting"

    if-nez v0, :cond_1

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "bootvideo.mp4"

    .line 104
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->checkLocalFileIsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->setBootVideoValues(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    new-instance v5, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, v6, p0, v0, p1}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil$1;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil$1;-><init>()V

    invoke-virtual {v5, p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->setListener(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;)Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->download()V

    goto :goto_0

    :cond_1
    const-string p0, "setBootVideoValues 0"

    .line 129
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->setBootVideoValues(Ljava/lang/String;)V

    .line 133
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "shutdown.mp4"

    .line 136
    invoke-static {p0, p3}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->checkLocalFileIsExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    invoke-static {v1}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->setShutdownVideoValues(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :cond_2
    new-instance p1, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p1, v0, p2, p0, p3}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil$2;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil$2;-><init>()V

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->setListener(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;)Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->download()V

    goto :goto_1

    :cond_3
    const-string p0, "setShutdownVideoValues 0"

    .line 160
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {v3}, Lcom/alibaba/ailabs/genie/genieboot/utils/BootUtils;->setShutdownVideoValues(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static startPreInstallJobService()V
    .locals 4

    const/4 v0, 0x1

    .line 45
    sput-boolean v0, Lcom/alibaba/ailabs/genie/genieboot/utils/ApkUtil;->mPreinstalled:Z

    const-string v0, "BootPowerSetting"

    const-string v1, "startPreInstallJobService"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 48
    new-instance v1, Landroid/content/ComponentName;

    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 49
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
