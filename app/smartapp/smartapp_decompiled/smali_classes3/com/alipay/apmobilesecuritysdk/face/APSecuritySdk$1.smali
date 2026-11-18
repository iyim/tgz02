.class Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;
.super Ljava/lang/Object;
.source "APSecuritySdk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->initToken(ILjava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

.field final synthetic val$listener:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

.field final synthetic val$sdkArgs:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;Ljava/util/Map;Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;->val$sdkArgs:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;->val$listener:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    new-instance v0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-static {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->access$000(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;->val$sdkArgs:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->initApdid(Ljava/util/Map;)I

    .line 141
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;->val$listener:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$1;->this$0:Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    invoke-virtual {v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$InitResultListener;->onResult(Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;)V

    :cond_0
    return-void
.end method
