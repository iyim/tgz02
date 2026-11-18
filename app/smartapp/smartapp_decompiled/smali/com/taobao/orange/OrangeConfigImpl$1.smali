.class Lcom/taobao/orange/OrangeConfigImpl$1;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/OrangeConfigImpl;->init(Landroid/content/Context;Lcom/taobao/orange/OConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/orange/OrangeConfigImpl;

.field final synthetic val$config:Lcom/taobao/orange/OConfig;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/orange/OrangeConfigImpl;Landroid/content/Context;Lcom/taobao/orange/OConfig;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/taobao/orange/OrangeConfigImpl$1;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iput-object p2, p0, Lcom/taobao/orange/OrangeConfigImpl$1;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/taobao/orange/OrangeConfigImpl$1;->val$config:Lcom/taobao/orange/OConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl$1;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object v1, p0, Lcom/taobao/orange/OrangeConfigImpl$1;->val$ctx:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/orange/OrangeConfigImpl;->asyncGetRemoteService(Landroid/content/Context;Z)V

    .line 84
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl$1;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object v0, v0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl$1;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    invoke-virtual {v0}, Lcom/taobao/orange/OrangeConfigImpl;->sendFailItems()V

    .line 87
    iget-object v0, p0, Lcom/taobao/orange/OrangeConfigImpl$1;->this$0:Lcom/taobao/orange/OrangeConfigImpl;

    iget-object v0, v0, Lcom/taobao/orange/OrangeConfigImpl;->mRemoteService:Lcom/taobao/orange/aidl/IOrangeApiService;

    iget-object v1, p0, Lcom/taobao/orange/OrangeConfigImpl$1;->val$config:Lcom/taobao/orange/OConfig;

    invoke-interface {v0, v1}, Lcom/taobao/orange/aidl/IOrangeApiService;->init(Lcom/taobao/orange/OConfig;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 89
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "OrangeConfigImpl"

    const-string v3, "asyncInit"

    invoke-static {v2, v3, v0, v1}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
