.class Lcom/taobao/android/service/AidlBridgeService$SingletonServiceConnection;
.super Ljava/lang/Object;
.source "AidlBridgeService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/service/AidlBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonServiceConnection"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/taobao/android/service/AidlBridgeService$1;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/taobao/android/service/AidlBridgeService$SingletonServiceConnection;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 101
    iput-object p2, p0, Lcom/taobao/android/service/AidlBridgeService$SingletonServiceConnection;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
