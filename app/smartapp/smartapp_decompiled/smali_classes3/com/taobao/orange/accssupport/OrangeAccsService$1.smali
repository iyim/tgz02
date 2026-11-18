.class final Lcom/taobao/orange/accssupport/OrangeAccsService$1;
.super Ljava/lang/Object;
.source "OrangeAccsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/orange/accssupport/OrangeAccsService;->handleAccsUpdate([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/taobao/orange/accssupport/OrangeAccsService$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 44
    iget-object v0, p0, Lcom/taobao/orange/accssupport/OrangeAccsService$1;->val$data:[B

    const/4 v1, 0x0

    const-string v2, "OrangeAccsService"

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    .line 45
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "json"

    aput-object v4, v0, v1

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const-string v4, "handleAccsUpdate"

    invoke-static {v2, v4, v0}, Lcom/taobao/orange/util/OLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const-class v0, Lcom/taobao/orange/model/NameSpaceDO;

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/orange/model/NameSpaceDO;

    if-nez v0, :cond_0

    .line 49
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "handleAccsUpdate fail as nameSpaceDO null"

    invoke-static {v2, v1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 52
    :cond_0
    invoke-static {}, Lcom/taobao/orange/ConfigCenter;->getInstance()Lcom/taobao/orange/ConfigCenter;

    move-result-object v3

    iget-object v3, v3, Lcom/taobao/orange/ConfigCenter;->mIsOrangeInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-static {}, Lcom/taobao/orange/ConfigCenter;->getInstance()Lcom/taobao/orange/ConfigCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/orange/ConfigCenter;->loadConfig(Lcom/taobao/orange/model/NameSpaceDO;)V

    goto :goto_0

    .line 55
    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "handleAccsUpdate fail as not finish orange init"

    invoke-static {v2, v1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    :cond_2
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "handleAccsUpdate data is empty"

    invoke-static {v2, v1, v0}, Lcom/taobao/orange/util/OLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
