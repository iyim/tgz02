.class Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$2;
.super Ljava/lang/Object;
.source "SmartAppApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->initMainProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$2;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$10()V
    .locals 2

    .line 237
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;->getInstance()Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/smartapp/task/UpdateAppScheduleJob;->start()V

    const-string v0, "SmartAppApplication"

    const-string v1, "UpdateAppScheduleJob.getInstance().start()"

    .line 238
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "=================application oncreate, processName="

    const-string v1, "SmartAppApplication"

    .line 233
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", begin66 time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$2;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->access$100(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)Landroid/os/Handler;

    move-result-object v2

    sget-object v3, Lcom/alibaba/ailabs/genie/smartapp/-$$Lambda$SmartAppApplication$2$x3zVUEEC-V_5IYcQDDmSFmqQQUY;->INSTANCE:Lcom/alibaba/ailabs/genie/smartapp/-$$Lambda$SmartAppApplication$2$x3zVUEEC-V_5IYcQDDmSFmqQQUY;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 252
    invoke-static {}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->getInstance()Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$2;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->init(Landroid/content/Context;)V

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", begin77 time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->sCurrentProcessName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", begin88 time="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$2;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/rtc/comon/register/RtcRegisterApplication;->registerUnbindReceiver(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
