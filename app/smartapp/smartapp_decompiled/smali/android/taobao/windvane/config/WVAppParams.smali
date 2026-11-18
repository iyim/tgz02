.class public Landroid/taobao/windvane/config/WVAppParams;
.super Ljava/lang/Object;
.source "WVAppParams.java"


# instance fields
.field public appKey:Ljava/lang/String;

.field public appSecret:Ljava/lang/String;

.field public appTag:Ljava/lang/String;

.field public appVersion:Ljava/lang/String;

.field public configRates:Landroid/taobao/windvane/config/UCHASettings$ConfigRate;

.field public deleteCorePolicy:I

.field public deviceId:Ljava/lang/String;

.field public disableMultiUnknownCrash:Z

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public needSpeed:Z

.field public open4GDownload:Z

.field public openUCDebug:Z

.field public ttid:Ljava/lang/String;

.field public uc7ZPath:Ljava/lang/String;

.field public ucCoreOuterControl:Z

.field public ucCoreWaitMills:I

.field public ucHASettings:Landroid/taobao/windvane/config/UCHASettings;

.field public ucLibDir:Ljava/lang/String;

.field public ucSdkInternationalEnv:Z

.field public ucsdkappkeySec:[Ljava/lang/String;

.field public useGlobalUrlConfig:Z

.field public zcacheOldConfig:Z

.field public zcacheSpeed:Z

.field public zcacheType3:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Landroid/taobao/windvane/config/WVAppParams;->ucsdkappkeySec:[Ljava/lang/String;

    .line 71
    iput-object v0, p0, Landroid/taobao/windvane/config/WVAppParams;->ucLibDir:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Landroid/taobao/windvane/config/WVAppParams;->uc7ZPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->ucSdkInternationalEnv:Z

    const/4 v1, 0x1

    .line 80
    iput-boolean v1, p0, Landroid/taobao/windvane/config/WVAppParams;->needSpeed:Z

    .line 81
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->zcacheSpeed:Z

    .line 83
    iput-boolean v1, p0, Landroid/taobao/windvane/config/WVAppParams;->openUCDebug:Z

    .line 85
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->zcacheOldConfig:Z

    .line 87
    iput-boolean v1, p0, Landroid/taobao/windvane/config/WVAppParams;->zcacheType3:Z

    .line 92
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->open4GDownload:Z

    .line 93
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->ucCoreOuterControl:Z

    const/16 v1, 0xfa0

    .line 96
    iput v1, p0, Landroid/taobao/windvane/config/WVAppParams;->ucCoreWaitMills:I

    .line 109
    iput v0, p0, Landroid/taobao/windvane/config/WVAppParams;->deleteCorePolicy:I

    .line 112
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->disableMultiUnknownCrash:Z

    .line 118
    iput-boolean v0, p0, Landroid/taobao/windvane/config/WVAppParams;->useGlobalUrlConfig:Z

    return-void
.end method
