.class public Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;
.super Ljava/lang/Object;
.source "BoxExternalStrageUtil.java"


# static fields
.field public static DOWNLOAD_PATH:Ljava/lang/String; = "Download/box_apps/"

.field private static TAG:Ljava/lang/String; = "BoxExternalStrageUtil"

.field private static volatile sDir:Ljava/io/File;

.field private static volatile sExternalStorageDir:Ljava/io/File;

.field private static volatile sFilesDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkSDCardAvailable()Z
    .locals 2

    :try_start_0
    const-string v0, "mounted"

    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 104
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sDir:Ljava/io/File;

    .line 107
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sDir:Ljava/io/File;

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 108
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dir Path:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sDir:Ljava/io/File;

    if-eqz p0, :cond_2

    .line 111
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static getDownloadDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .line 38
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/Android/data/com.alibaba.ailabs.genie.smartapp/cache/download/market/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public static final getExternalStorageDirectory()Ljava/io/File;
    .locals 3

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sExternalStorageDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sExternalStorageDir:Ljava/io/File;

    .line 30
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sExternalStorageDir:Ljava/io/File;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExternalStorageDir Path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sExternalStorageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_1
    sget-object v0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sExternalStorageDir:Ljava/io/File;

    return-object v0
.end method

.method public static getFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 87
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sFilesDir:Ljava/io/File;

    if-nez p0, :cond_0

    .line 89
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sFilesDir:Ljava/io/File;

    .line 91
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sFilesDir:Ljava/io/File;

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 92
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FilesDir Path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sFilesDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/appbox/utils/DebugLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_1
    sget-object p0, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->sFilesDir:Ljava/io/File;

    return-object p0
.end method

.method public static getFilesDownloadDirOnExt(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 58
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method public static getTestDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 47
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/utils/BoxExternalStrageUtil;->getFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v1, "/test"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method
