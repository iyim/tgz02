.class public Landroid/taobao/windvane/config/UCHASettings$ConfigRate;
.super Ljava/lang/Object;
.source "UCHASettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/config/UCHASettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigRate"
.end annotation


# instance fields
.field public u4BkpgSamplingRate:I

.field public u4CollectUrlQuery:Z

.field public u4CollectUrlRef:Z

.field public u4HarSamplingRate:D

.field public u4InteractionJsErrorSamplingRate:I

.field public u4JserrSamplingRate:I

.field public u4MapsGroupsMaxGlMemory:I

.field public u4MapsGroupsMaxScriptMemory:I

.field public u4MapsGroupsSamplingRate:F

.field public u4MapsGroupsTpuploadDefine:I

.field public u4ResloadfailSamplingRate:I

.field public u4T1t3detailSamplingRate:I

.field public u4UcLargeAllocSize:I

.field public u4WebglErrorStateApiSamplingRate:I

.field public u4XhrSamplingRate:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4CollectUrlQuery:Z

    .line 28
    iput-boolean v0, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4CollectUrlRef:Z

    const/16 v1, 0x64

    .line 29
    iput v1, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4BkpgSamplingRate:I

    const/16 v2, 0x1e

    .line 30
    iput v2, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4T1t3detailSamplingRate:I

    const/16 v2, 0xa

    .line 31
    iput v2, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4ResloadfailSamplingRate:I

    .line 32
    iput v0, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4XhrSamplingRate:I

    .line 33
    iput v1, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4JserrSamplingRate:I

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    .line 34
    iput-wide v2, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4HarSamplingRate:D

    .line 37
    iput v1, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4InteractionJsErrorSamplingRate:I

    .line 38
    iput v1, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4WebglErrorStateApiSamplingRate:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 41
    iput v0, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4MapsGroupsSamplingRate:F

    const/16 v0, 0x14

    .line 42
    iput v0, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4MapsGroupsTpuploadDefine:I

    .line 43
    iput v1, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4MapsGroupsMaxScriptMemory:I

    .line 44
    iput v1, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4MapsGroupsMaxGlMemory:I

    const/16 v0, 0x32

    .line 45
    iput v0, p0, Landroid/taobao/windvane/config/UCHASettings$ConfigRate;->u4UcLargeAllocSize:I

    return-void
.end method
