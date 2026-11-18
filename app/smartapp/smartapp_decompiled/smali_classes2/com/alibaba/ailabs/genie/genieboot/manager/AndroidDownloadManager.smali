.class public Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;
.super Ljava/lang/Object;
.source "AndroidDownloadManager.java"


# instance fields
.field private context:Landroid/content/Context;

.field private downloadId:J

.field private downloadManager:Landroid/app/DownloadManager;

.field private listener:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;

.field private md5:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager$1;-><init>(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->url:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->name:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->md5:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->downloadId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Landroid/app/DownloadManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->listener:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->path:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->md5:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->receiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x400

    .line 161
    new-array v1, v0, [B

    const-string v2, "MD5"

    .line 163
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 164
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    const/4 p0, 0x0

    .line 165
    invoke-virtual {v3, v1, p0, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 166
    invoke-virtual {v2, v1, p0, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 169
    new-instance p0, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    .line 170
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public download()V
    .locals 4

    .line 51
    :try_start_0
    new-instance v0, Landroid/app/DownloadManager$Request;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    const/4 v1, 0x2

    .line 55
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 62
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/"

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 67
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    .line 68
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->path:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->context:Landroid/content/Context;

    const-string v2, "download"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    if-eqz v1, :cond_3

    .line 76
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->listener:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;

    if-eqz v1, :cond_2

    .line 77
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->listener:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;->onPrepare()V

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->downloadId:J

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;)Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManager;->listener:Lcom/alibaba/ailabs/genie/genieboot/manager/AndroidDownloadManagerListener;

    return-object p0
.end method
