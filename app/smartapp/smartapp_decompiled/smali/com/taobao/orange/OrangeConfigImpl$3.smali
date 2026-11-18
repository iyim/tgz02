.class Lcom/taobao/orange/OrangeConfigImpl$3;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Lcom/taobao/orange/OConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/OrangeConfigImpl;->getSyncCustomConfig(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/OrangeConfigImpl;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$defaultVal:Ljava/lang/String;

.field final synthetic val$result:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/taobao/orange/OrangeConfigImpl;Ljava/util/concurrent/CountDownLatch;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl$3;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iput-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/taobao/orange/OrangeConfigImpl$3;->val$result:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/taobao/orange/OrangeConfigImpl$3;->val$defaultVal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigUpdate(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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

    .line 209
    iget-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$3;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 210
    iget-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$3;->val$result:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 211
    iget-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$3;->val$result:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl$3;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object v1, p0, Lcom/taobao/orange/OrangeConfigImpl$3;->val$defaultVal:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/taobao/orange/OrangeConfigImpl;->getCustomConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
