.class public Landroid/taobao/windvane/packageapp/WVPackageAppService;
.super Ljava/lang/Object;
.source "WVPackageAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;
    }
.end annotation


# static fields
.field private static packageZipPrefixAdapter:Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;

.field private static wvPackageApp:Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getPackageZipPrefixAdapter()Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;
    .locals 1

    .line 32
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppService;->packageZipPrefixAdapter:Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;

    return-object v0
.end method

.method public static getWvPackageAppConfig()Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;
    .locals 1

    .line 20
    sget-object v0, Landroid/taobao/windvane/packageapp/WVPackageAppService;->wvPackageApp:Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;

    return-object v0
.end method

.method public static registerWvPackageAppConfig(Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;)V
    .locals 0

    .line 24
    sput-object p0, Landroid/taobao/windvane/packageapp/WVPackageAppService;->wvPackageApp:Landroid/taobao/windvane/packageapp/WVPackageAppConfigInterface;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static setPackageZipPrefixAdapter(Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;)V
    .locals 0

    .line 28
    sput-object p0, Landroid/taobao/windvane/packageapp/WVPackageAppService;->packageZipPrefixAdapter:Landroid/taobao/windvane/packageapp/WVPackageAppService$IPackageZipPrefixAdapter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
