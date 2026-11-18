.class Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;
.super Ljava/lang/Object;
.source "DeviceTokenClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->initToken(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

.field final synthetic val$appNameFinal:Ljava/lang/String;

.field final synthetic val$inArgs:Ljava/util/Map;

.field final synthetic val$listener:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->this$0:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->val$inArgs:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->val$listener:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->val$appNameFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 70
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->this$0:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->access$000(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->val$inArgs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->initApdid(Ljava/util/Map;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->val$listener:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->this$0:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;->access$000(Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->val$appNameFinal:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->getLocalApdidToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$1;->val$listener:Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;->onResult(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 79
    invoke-interface {v1, v2, v0}, Lcom/alipay/apmobilesecuritysdk/face/DeviceTokenClient$InitResultListener;->onResult(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
