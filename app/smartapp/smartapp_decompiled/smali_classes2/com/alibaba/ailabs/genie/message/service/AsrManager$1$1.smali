.class Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;
.super Ljava/lang/Object;
.source "AsrManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;

.field final synthetic val$clientInfo:Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;

.field final synthetic val$originFinalCommand:Ljava/lang/String;

.field final synthetic val$subCommand:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->this$1:Lcom/alibaba/ailabs/genie/message/service/AsrManager$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->val$clientInfo:Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->val$subCommand:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->val$originFinalCommand:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->val$clientInfo:Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->listener:Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->val$subCommand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AsrManager"

    .line 191
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->val$clientInfo:Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->listener:Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->val$clientInfo:Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$ClientInfo;->listener:Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->val$subCommand:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/message/service/AsrManager$1$1;->val$originFinalCommand:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/message/service/AsrManager$IOnCommandListener;->onCommand(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
