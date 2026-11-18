.class public abstract Lcom/alibaba/ailabs/genie/utils/task/UITask;
.super Lcom/alibaba/ailabs/genie/utils/task/Task;
.source "UITask.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/utils/task/Task;-><init>(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public clean()V
    .locals 1

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/task/UITask$2;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/utils/task/UITask$2;-><init>(Lcom/alibaba/ailabs/genie/utils/task/UITask;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected abstract cleanUI()V
.end method

.method public run()V
    .locals 1

    .line 14
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/task/UITask$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/utils/task/UITask$1;-><init>(Lcom/alibaba/ailabs/genie/utils/task/UITask;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;)Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected abstract showUI(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V
.end method
