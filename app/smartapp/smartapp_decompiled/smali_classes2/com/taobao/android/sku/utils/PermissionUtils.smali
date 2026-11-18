.class public Lcom/taobao/android/sku/utils/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 13
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/sku/utils/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static grantReadStoragePermissions(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-static {p0}, Lcom/taobao/android/sku/utils/PermissionUtils;->hasReadStoragePermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 26
    nop

    nop

    sget-object v0, Lcom/taobao/android/sku/utils/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static hasReadStoragePermissions(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 19
    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
