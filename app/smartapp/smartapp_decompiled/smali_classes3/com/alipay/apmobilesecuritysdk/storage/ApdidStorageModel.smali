.class public Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;
.super Ljava/lang/Object;
.source "ApdidStorageModel.java"


# static fields
.field public static final KEY_APDID:Ljava/lang/String; = "apdid"

.field public static final KEY_DEVICEINFOHASH:Ljava/lang/String; = "deviceInfoHash"

.field public static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"


# instance fields
.field private apdid:Ljava/lang/String;

.field private deviceInfoHash:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->apdid:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->deviceInfoHash:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->timestamp:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getApdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->apdid:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->deviceInfoHash:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/alipay/security/mobile/module/http/model/DeviceDataReponseModel;->getCurrentTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->timestamp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->apdid:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->deviceInfoHash:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->timestamp:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->apdid:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->deviceInfoHash:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->timestamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApdid()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->apdid:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfoHash()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->deviceInfoHash:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/ApdidStorageModel;->timestamp:Ljava/lang/String;

    return-object v0
.end method
