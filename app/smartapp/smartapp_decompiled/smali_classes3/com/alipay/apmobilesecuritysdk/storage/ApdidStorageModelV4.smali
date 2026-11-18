.class public Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;
.super Ljava/lang/Object;
.source "ApdidStorageModelV4.java"


# static fields
.field public static final KEY_APDID:Ljava/lang/String; = "apdid"

.field public static final KEY_DEVICEINFOHASH:Ljava/lang/String; = "deviceInfoHash"

.field public static final KEY_TID:Ljava/lang/String; = "tid"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final KEY_UTDID:Ljava/lang/String; = "utdid"


# instance fields
.field private apdid:Ljava/lang/String;

.field private deviceInfoHash:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;

.field private utdid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 10
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->apdid:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->deviceInfoHash:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->timestamp:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->tid:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->utdid:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->apdid:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->deviceInfoHash:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->timestamp:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->tid:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->utdid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->apdid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfoHash()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->deviceInfoHash:Ljava/lang/String;

    return-object v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->utdid:Ljava/lang/String;

    return-object v0
.end method

.method public setApdid(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->apdid:Ljava/lang/String;

    return-void
.end method

.method public setDeviceInfoHash(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->deviceInfoHash:Ljava/lang/String;

    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->tid:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public setUtdid(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModelV4;->utdid:Ljava/lang/String;

    return-void
.end method
