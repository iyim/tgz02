.class Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

.field final synthetic val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

.field final synthetic val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$verifyId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, " bizName:"

    const-string v2, " token:"

    const-string v3, " verifyId: "

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getExtInfo()Ljava/util/HashMap;

    move-result-object v0

    const-string v4, "moduleNoNeedToCallback"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NO NEED to notifyVerifyTaskResult result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-virtual {v5}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    .line 217
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyVerifyTaskResult result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-virtual {v5}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    .line 222
    invoke-virtual {v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;->getBizName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$result:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$100(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyVerifyTaskResult result is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;

    const-string v1, "2002"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->this$0:Lcom/alipay/mobile/verifyidentity/engine/TaskManager;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$verifyId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$token:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/verifyidentity/engine/TaskManager$2;->val$task:Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/verifyidentity/engine/TaskManager;->access$100(Lcom/alipay/mobile/verifyidentity/engine/TaskManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityTask;Lcom/alipay/mobile/verifyidentity/data/VerifyIdentityResult;)V

    :goto_0
    return-void
.end method
