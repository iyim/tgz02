.class Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;
.super Ljava/lang/Object;
.source "RegisterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->tryRegister(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

.field final synthetic val$reset:Z

.field final synthetic val$runnableEx:Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$RunnableEx;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;ZLcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$RunnableEx;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->val$reset:Z

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->val$runnableEx:Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$RunnableEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->val$reset:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$200(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)I

    move-result v1

    :goto_0
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$202(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;I)I

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->val$runnableEx:Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$RunnableEx;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/utils/ThreadManager$RunnableEx;->getArg()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryRegister.mRetryTimes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    invoke-static {v4}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$200(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", authInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$400(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 77
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->isValidAuthInfo(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z

    move-result v1

    const-wide/16 v3, 0x7530

    if-nez v1, :cond_2

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tryRegister isValidAuthInfo"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$200(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-wide/32 v3, 0x493e0

    .line 80
    :goto_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$400(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 82
    :cond_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/repository/config/ConfigMgr;->isAuthInfoUpdated(Lcom/alibaba/ailabs/genie/second/genie/AuthInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    invoke-static {}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tryRegister isAuthInfoUpdated"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/rtc/repository/net/req/RegisterReqeust;->tryRegister(Z)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$400(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager$3;->this$0:Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;->access$208(Lcom/alibaba/ailabs/genie/rtc/comon/register/RegisterManager;)I

    return-void
.end method
