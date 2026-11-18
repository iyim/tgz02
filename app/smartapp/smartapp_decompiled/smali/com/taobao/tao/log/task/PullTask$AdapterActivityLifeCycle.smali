.class Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;
.super Ljava/lang/Object;
.source "PullTask.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/log/task/PullTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterActivityLifeCycle"
.end annotation


# instance fields
.field private mActivitiesActive:I

.field private mIsInForeground:Z

.field final synthetic this$0:Lcom/taobao/tao/log/task/PullTask;


# direct methods
.method private constructor <init>(Lcom/taobao/tao/log/task/PullTask;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->this$0:Lcom/taobao/tao/log/task/PullTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 116
    iput p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mActivitiesActive:I

    .line 117
    iput-boolean p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mIsInForeground:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/tao/log/task/PullTask;Lcom/taobao/tao/log/task/PullTask$1;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;-><init>(Lcom/taobao/tao/log/task/PullTask;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 142
    iget p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mActivitiesActive:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mActivitiesActive:I

    .line 144
    iget-boolean p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mIsInForeground:Z

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->this$0:Lcom/taobao/tao/log/task/PullTask;

    invoke-static {p1}, Lcom/taobao/tao/log/task/PullTask;->access$400(Lcom/taobao/tao/log/task/PullTask;)Landroid/os/Handler;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 148
    :cond_0
    iput-boolean v0, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mIsInForeground:Z

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 153
    iget p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mActivitiesActive:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mActivitiesActive:I

    .line 154
    iget p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mActivitiesActive:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 155
    iput-boolean p1, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->mIsInForeground:Z

    .line 157
    iget-object v0, p0, Lcom/taobao/tao/log/task/PullTask$AdapterActivityLifeCycle;->this$0:Lcom/taobao/tao/log/task/PullTask;

    invoke-static {v0}, Lcom/taobao/tao/log/task/PullTask;->access$400(Lcom/taobao/tao/log/task/PullTask;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
