.class public Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;
.super Ljava/lang/Object;
.source "ReadSettingServerUrl.java"


# static fields
.field private static a:Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://mobilegw.alipay.com/mgw.htm"

    .line 18
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    const-string v0, "http://amdc.alipay.com/query"

    .line 20
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->c:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;
    .locals 2

    const-class v0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->a:Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    invoke-direct {v1}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;-><init>()V

    sput-object v1, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->a:Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;

    .line 27
    :cond_0
    sget-object v1, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->a:Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "ReadSettingServerUrl"

    const-string v1, "getValue start."

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 88
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 p2, 0x0

    .line 90
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 91
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getValue.  cursor exist.  uri=["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]  ret=["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_0
    if-eqz p0, :cond_1

    .line 95
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 96
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x4000

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 45
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDebug exception.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ReadSettingServerUrl"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public final getGWFURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 73
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->isDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    const-string v1, "content://com.alipay.setting/GWFServerUrl"

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    return-object p1
.end method

.method public getmUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setmUrl(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/ReadSettingServerUrl;->b:Ljava/lang/String;

    return-void
.end method
