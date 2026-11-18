.class Lcom/taobao/orange/OrangeConfigImpl$2;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Lcom/taobao/orange/OConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/OrangeConfigImpl;->getSyncConfigs(Ljava/lang/String;J)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/OrangeConfigImpl;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$finalResult:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/taobao/orange/OrangeConfigImpl;Ljava/util/concurrent/CountDownLatch;Ljava/util/Map;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl$2;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iput-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/taobao/orange/OrangeConfigImpl$2;->val$finalResult:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    iget-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$2;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 149
    iget-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$2;->val$finalResult:Ljava/util/Map;

    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl$2;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    invoke-virtual {v0, p1}, Lcom/taobao/orange/OrangeConfigImpl;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
