.class public Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field public accountMode:I

.field public appVersion:Ljava/lang/String;

.field public bizGroup:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public caPath:Ljava/lang/String;

.field public cacheDir:Ljava/lang/String;

.field public configPath:Ljava/lang/String;

.field public devSecretKey:Ljava/lang/String;

.field public deviceIDType:I

.field public extInfo:Ljava/lang/String;

.field public fileDir:Ljava/lang/String;

.field public gatewayHostH2:Ljava/lang/String;

.field public gatewayHostWS:Ljava/lang/String;

.field public isPullMode:Z

.field public keyOdokAES:Ljava/lang/String;

.field public libDir:Ljava/lang/String;

.field public odmInfo:Ljava/lang/String;

.field public serverProductId:Ljava/lang/String;

.field public sn:Ljava/lang/String;

.field public systemVer:Ljava/lang/String;

.field public vendorInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/alibaba/ailabs/geniesdk/device/DeviceInfo;->deviceIDType:I

    return-void
.end method
