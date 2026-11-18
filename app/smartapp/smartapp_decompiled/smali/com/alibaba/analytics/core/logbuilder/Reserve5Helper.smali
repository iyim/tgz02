.class Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;
.super Ljava/lang/Object;
.source "Reserve5Helper.java"


# static fields
.field private static final ANDROID_ID:Ljava/lang/String; = "aid"

.field private static final OAID_ID:Ljava/lang/String; = "oaid"

.field private static final WIDEVINE_ID:Ljava/lang/String; = "wvid"

.field private static bInitAndroidId:Z = false

.field private static bInitWideVineId:Z = false

.field private static bReserve:Z = false

.field private static mAndroidId:Ljava/lang/String; = ""

.field private static mReserve:Ljava/lang/String; = ""

.field private static mWideVineId:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 46
    sget-boolean v0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->bInitAndroidId:Z

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mAndroidId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x1

    .line 56
    sput-boolean p0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->bInitAndroidId:Z

    .line 57
    sget-object p0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mAndroidId:Ljava/lang/String;

    return-object p0

    .line 47
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mAndroidId:Ljava/lang/String;

    return-object p0
.end method

.method static getReserve(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 27
    sget-boolean v0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->bReserve:Z

    if-nez v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const-class v0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-boolean v1, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->bReserve:Z

    if-eqz v1, :cond_1

    .line 33
    sget-object p0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mReserve:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 36
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "wvid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {}, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->getWideVineId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "oaid"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/analytics/core/Variables;->getOaid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mReserve:Ljava/lang/String;

    const/4 p0, 0x1

    .line 39
    sput-boolean p0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->bReserve:Z

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object p0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mReserve:Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 28
    :cond_2
    :goto_0
    sget-object p0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mReserve:Ljava/lang/String;

    return-object p0
.end method

.method private static getWideVineId()Ljava/lang/String;
    .locals 5

    .line 61
    sget-boolean v0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->bInitWideVineId:Z

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mWideVineId:Ljava/lang/String;

    return-object v0

    .line 65
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_4

    .line 66
    new-instance v0, Ljava/util/UUID;

    const-wide v1, -0x121074568629b532L    # -3.563403477674908E221

    const-wide v3, -0x5c37d8232ae2de13L

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    const/4 v1, 0x0

    const/16 v2, 0x1c

    .line 69
    :try_start_0
    new-instance v3, Landroid/media/MediaDrm;

    invoke-direct {v3, v0}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "deviceUniqueId"

    .line 70
    invoke-virtual {v3, v0}, Landroid/media/MediaDrm;->getPropertyByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mWideVineId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    nop

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_1

    .line 77
    invoke-virtual {v3}, Landroid/media/MediaDrm;->close()V

    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v3}, Landroid/media/MediaDrm;->release()V

    :cond_2
    :goto_1
    throw v0

    :catch_1
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    .line 77
    :goto_3
    invoke-virtual {v3}, Landroid/media/MediaDrm;->close()V

    goto :goto_4

    .line 79
    :cond_3
    invoke-virtual {v3}, Landroid/media/MediaDrm;->release()V

    :cond_4
    :goto_4
    const/4 v0, 0x1

    .line 85
    sput-boolean v0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->bInitWideVineId:Z

    .line 86
    sget-object v0, Lcom/alibaba/analytics/core/logbuilder/Reserve5Helper;->mWideVineId:Ljava/lang/String;

    return-object v0
.end method
