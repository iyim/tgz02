.class public Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;
.super Ljava/lang/Object;
.source "InstallAfter9.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$InstallResultReceiver;,
        Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;
    }
.end annotation


# static fields
.field public static final INSTALL_FAILED_ANDROID_P:I = -0xaf1

.field public static final INSTALL_SUCCESS:I = 0x0

.field public static final PACKAGE_INSTALL_ACTION:Ljava/lang/String; = "com.alibaba.genie.market.AppInstall.SESSION_API_PACKAGE_INSTALLED"

.field private static final TAG:Ljava/lang/String; = "InstallAfter9-log"

.field private static androidPInstallObserver:Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver; = null

.field private static currentPackageName:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    sput-object p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->currentPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;
    .locals 1

    .line 33
    sget-object v0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->androidPInstallObserver:Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;

    return-object v0
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 209
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 211
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static copyInstallFile(Landroid/content/pm/PackageInstaller;ILjava/lang/String;)Z
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v4, "base.apk"

    const-wide/16 v5, 0x0

    .line 115
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :try_start_2
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const v1, 0xffff

    .line 118
    :try_start_3
    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 119
    :goto_0
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    .line 121
    invoke-virtual {p1, v1, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V

    const-string v1, "InstallAfter9-log"

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "streamed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p2, v1

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v9, v1

    move-object v1, p2

    move-object p2, v9

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object p2, v1

    move-object v1, p1

    move-object p1, p2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v1

    move-object p1, p0

    :goto_1
    move-object p2, p1

    goto :goto_4

    :catch_3
    move-exception p0

    move-object p1, v1

    move-object p2, p1

    move-object v1, p0

    move-object p0, p2

    .line 127
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 129
    :goto_3
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->closeQuietly(Ljava/io/Closeable;)V

    .line 130
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->closeQuietly(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_3
    move-exception v0

    .line 129
    :goto_4
    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->closeQuietly(Ljava/io/Closeable;)V

    .line 130
    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->closeQuietly(Ljava/io/Closeable;)V

    .line 131
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static createSession(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 98
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 100
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private static execInstallCommand(Landroid/content/pm/PackageInstaller;I)I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 140
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 141
    :try_start_1
    new-instance p1, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;

    invoke-direct {p1}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;-><init>()V

    sput-object p1, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->androidPInstallObserver:Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;

    .line 142
    new-instance p1, Landroid/content/Intent;

    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-class v3, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$InstallResultReceiver;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.alibaba.genie.market.AppInstall.SESSION_API_PACKAGE_INSTALLED"

    .line 143
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-static {v2, v0, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    move-object p0, v1

    :goto_0
    :try_start_2
    const-string v2, "InstallAfter9-log"

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execInstallCommand IOException -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 151
    :goto_1
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->closeQuietly(Ljava/io/Closeable;)V

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "androidPInstallObserver == null ? "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->androidPInstallObserver:Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InstallAfter9-log"

    invoke-static {p1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->androidPInstallObserver:Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;

    monitor-enter p1

    :try_start_3
    const-string p0, "InstallAfter9-log"

    const-string v0, "execInstallCommand sync"

    .line 157
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_3
    sget-object p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->androidPInstallObserver:Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;

    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;->finished:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez p0, :cond_1

    .line 160
    :try_start_4
    sget-object p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->androidPInstallObserver:Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string p0, "InstallAfter9-log"

    const-string v0, "AppOperator.execInstallCommand wait."

    .line 161
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catch_2
    :try_start_5
    const-string p0, "InstallAfter9-log"

    const-string v0, "AppOperator.execInstallCommand installation interrupted."

    .line 163
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 166
    :cond_1
    sget-object p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->androidPInstallObserver:Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;

    iget p0, p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;->result:I

    .line 167
    sput-object v1, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->androidPInstallObserver:Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9$AndroidPInstallObserver;

    const-string v0, "InstallAfter9-log"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execInstallCommand return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    monitor-exit p1

    return p0

    :catchall_2
    move-exception p0

    .line 170
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    .line 151
    :goto_4
    invoke-static {p0}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public static installAndroidP(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 4

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    .line 74
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 78
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->createSession(Landroid/content/pm/PackageInstaller;Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0

    const-string v1, "InstallAfter9-log"

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 80
    invoke-static {p0, v0, p1}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->copyInstallFile(Landroid/content/pm/PackageInstaller;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "installAndroidP is copySuccess.."

    .line 82
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->execInstallCommand(Landroid/content/pm/PackageInstaller;I)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "copyInstallFile failed."

    .line 85
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "createSession and session id is -1."

    .line 88
    invoke-static {v1, p0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/16 p0, -0xaf1

    return p0
.end method

.method public static installApk(Ljava/lang/String;Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;)V
    .locals 2

    .line 53
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->installAndroidP(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result p0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installApk code is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallAfter9-log"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/16 v0, -0xaf1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    add-int/lit16 p0, p0, 0x2710

    neg-int p0, p0

    const-string v0, "android10 install failed.."

    .line 64
    invoke-interface {p1, v0, p0}, Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;->onInstallFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 58
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/appbox/common/installafter9/InstallAfter9;->currentPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;->onInstallSuccess(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p0, "android10 install exception.."

    .line 61
    invoke-interface {p1, p0, v0}, Lcom/alibaba/ailabs/appbox/common/install/OnInstallListener;->onInstallExecption(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
