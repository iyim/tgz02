.class final Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setCellInfos(Landroid/content/Context;Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$locationInfo:Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;

.field final synthetic val$manager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo$1;->val$locationInfo:Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;

    iput-object p2, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo$1;->val$manager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    .line 273
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo$1;->val$locationInfo:Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo;->setCellRssi(I)V

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/alipay/security/mobile/module/deviceinfo/LocationInfo$1;->val$manager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method
