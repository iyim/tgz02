.class Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$6;
.super Ljava/lang/Object;
.source "ApiActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$6;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlowTaskManager mCheckCameraOpenFlow begin, isChildMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isChildMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isEyeYieldMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApiActivity"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity$6;->this$0:Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ApiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/CacheManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/childmode/CacheManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/childmode/CacheManager;->updateEyeModeInfo(Z)V

    goto :goto_0

    .line 261
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    :goto_0
    return-void
.end method
