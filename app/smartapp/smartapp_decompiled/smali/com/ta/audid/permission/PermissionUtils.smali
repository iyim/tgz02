.class public Lcom/ta/audid/permission/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkReadPhoneStatePermissionGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 23
    invoke-static {p0, v0}, Lcom/ta/audid/permission/PermissionUtils;->selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkStoragePermissionGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 18
    invoke-static {p0, v0}, Lcom/ta/audid/permission/PermissionUtils;->selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkWifiStatePermissionGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 28
    invoke-static {p0, v0}, Lcom/ta/audid/permission/PermissionUtils;->selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static selfPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/ta/audid/utils/AppInfoUtils;->getTargetSdkVersion(Landroid/content/Context;)I

    move-result v1

    .line 39
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_2

    if-lt v1, v3, :cond_1

    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 47
    :cond_1
    invoke-static {p0, p1}, Lcom/ta/audid/permission/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p0, p1}, Lcom/ta/audid/permission/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method
