.class Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;
.super Ljava/lang/Object;
.source "ApdidManager.java"

# interfaces
.implements Lcom/alipay/apmobilesecuritysdk/macro/TmxStub$TmxSdkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;->initApdid(Ljava/util/Map;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

.field final synthetic val$args:Ljava/util/Map;

.field final synthetic val$waitForTmxLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->this$0:Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$args:Ljava/util/Map;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$waitForTmxLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$args:Ljava/util/Map;

    const-string v1, "tmxSessionId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p1, p0, Lcom/alipay/apmobilesecuritysdk/apdid/ApdidManager$1;->val$waitForTmxLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
