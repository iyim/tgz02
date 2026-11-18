.class Lcom/taobao/orange/ConfigCenter$2;
.super Ljava/lang/Object;
.source "ConfigCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/ConfigCenter;->getConfigObj(Ljava/lang/String;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/ConfigCenter;

.field final synthetic val$namespaceDO:Lcom/taobao/orange/model/NameSpaceDO;


# direct methods
.method constructor <init>(Lcom/taobao/orange/ConfigCenter;Lcom/taobao/orange/model/NameSpaceDO;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/taobao/orange/ConfigCenter$2;->this$0:Lcom/taobao/orange/ConfigCenter;

    iput-object p2, p0, Lcom/taobao/orange/ConfigCenter$2;->val$namespaceDO:Lcom/taobao/orange/model/NameSpaceDO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 308
    invoke-static {v0}, Lcom/taobao/orange/util/OLog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 309
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "namespace"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/taobao/orange/ConfigCenter$2;->val$namespaceDO:Lcom/taobao/orange/model/NameSpaceDO;

    iget-object v2, v2, Lcom/taobao/orange/model/NameSpaceDO;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const-string v0, "ConfigCenter"

    const-string v2, "getConfigObj force to load"

    invoke-static {v0, v2, v1}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/taobao/orange/ConfigCenter$2;->this$0:Lcom/taobao/orange/ConfigCenter;

    iget-object v1, p0, Lcom/taobao/orange/ConfigCenter$2;->val$namespaceDO:Lcom/taobao/orange/model/NameSpaceDO;

    invoke-virtual {v0, v1}, Lcom/taobao/orange/ConfigCenter;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;)V

    return-void
.end method
