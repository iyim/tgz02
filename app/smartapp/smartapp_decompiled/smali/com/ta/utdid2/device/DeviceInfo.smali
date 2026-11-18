.class public Lcom/ta/utdid2/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field static final CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

.field private static mDevice:Lcom/ta/utdid2/device/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized getDevice(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 2

    const-class v0, Lcom/ta/utdid2/device/DeviceInfo;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;

    if-eqz v1, :cond_0

    .line 69
    sget-object p0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    .line 72
    :try_start_1
    invoke-static {p0}, Lcom/ta/utdid2/device/DeviceInfo;->initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;

    move-result-object p0

    .line 73
    sput-object p0, Lcom/ta/utdid2/device/DeviceInfo;->mDevice:Lcom/ta/utdid2/device/Device;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 76
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J
    .locals 4

    if-eqz p0, :cond_0

    const/4 v0, 0x5

    .line 18
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getUtdid()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 20
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getCreateTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImsi()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 21
    invoke-virtual {p0}, Lcom/ta/utdid2/device/Device;->getImei()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s%s%s%s%s"

    .line 18
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 24
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/Adler32;->update([B)V

    .line 26
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static initDeviceMetadata(Landroid/content/Context;)Lcom/ta/utdid2/device/Device;
    .locals 6

    if-eqz p0, :cond_2

    .line 40
    sget-object v0, Lcom/ta/utdid2/device/DeviceInfo;->CREATE_DEVICE_METADATA_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/ta/utdid2/device/UTUtdid;->instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ta/utdid2/device/UTUtdid;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "\n"

    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 47
    :cond_0
    new-instance v2, Lcom/ta/utdid2/device/Device;

    invoke-direct {v2}, Lcom/ta/utdid2/device/Device;-><init>()V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 49
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-static {p0}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-virtual {v2, v5}, Lcom/ta/utdid2/device/Device;->setDeviceId(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v5}, Lcom/ta/utdid2/device/Device;->setImei(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2, v3, v4}, Lcom/ta/utdid2/device/Device;->setCreateTimestamp(J)V

    .line 54
    invoke-virtual {v2, p0}, Lcom/ta/utdid2/device/Device;->setImsi(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v1}, Lcom/ta/utdid2/device/Device;->setUtdid(Ljava/lang/String;)V

    .line 56
    invoke-static {v2}, Lcom/ta/utdid2/device/DeviceInfo;->getMetadataCheckSum(Lcom/ta/utdid2/device/Device;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/ta/utdid2/device/Device;->setCheckSum(J)V

    .line 57
    monitor-exit v0

    return-object v2

    .line 59
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
