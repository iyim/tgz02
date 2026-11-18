.class public Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;
.super Ljava/lang/Object;
.source "DeviceInfoStorageModel.java"


# static fields
.field public static final DEV_BMAC:Ljava/lang/String; = "bluetoothmac"

.field public static final DEV_GSI:Ljava/lang/String; = "gsi"

.field public static final DEV_IMEI:Ljava/lang/String; = "imei"

.field public static final DEV_IMSI:Ljava/lang/String; = "imsi"

.field public static final DEV_MAC:Ljava/lang/String; = "mac"


# instance fields
.field private bluetoothMac:Ljava/lang/String;

.field private gsi:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private mac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imei:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imsi:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->mac:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->bluetoothMac:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->gsi:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imei:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imsi:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->mac:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->bluetoothMac:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->gsi:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imei:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imsi:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->mac:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->bluetoothMac:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->gsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBluetoothMac()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->bluetoothMac:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGsi()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->gsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imei:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->mac:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBluetoothMac(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->bluetoothMac:Ljava/lang/String;

    return-void
.end method

.method public setGsi(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->gsi:Ljava/lang/String;

    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imei:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/storage/DeviceInfoStorageModel;->mac:Ljava/lang/String;

    return-void
.end method
