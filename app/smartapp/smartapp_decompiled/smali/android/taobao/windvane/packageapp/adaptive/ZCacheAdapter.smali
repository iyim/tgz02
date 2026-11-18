.class public Landroid/taobao/windvane/packageapp/adaptive/ZCacheAdapter;
.super Ljava/lang/Object;
.source "ZCacheAdapter.java"

# interfaces
.implements Lcom/taobao/zcache/config/IZCacheUpdate;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZCacheUpdate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public firstUpdateCount(I)V
    .locals 2

    .line 20
    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->getInstance()Landroid/taobao/windvane/packageapp/WVPackageAppManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->getUpdateFinishCallback()Landroid/taobao/windvane/packageapp/adaptive/IZCacheFirstUpdateFinishCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->getInstance()Landroid/taobao/windvane/packageapp/WVPackageAppManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/windvane/packageapp/WVPackageAppManager;->getUpdateFinishCallback()Landroid/taobao/windvane/packageapp/adaptive/IZCacheFirstUpdateFinishCallback;

    move-result-object v0

    const-string v1, "3"

    invoke-interface {v0, v1, p1}, Landroid/taobao/windvane/packageapp/adaptive/IZCacheFirstUpdateFinishCallback;->updateCount(Ljava/lang/String;I)V

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZCache 3.0 \u9996\u6b21\u66f4\u65b0\u4e2a\u6570["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/zcache/log/ZLog;->i(Ljava/lang/String;)V

    return-void
.end method
