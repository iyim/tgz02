.class Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnTtsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->handleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError\uff0c back time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$300()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mOriginSessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    .line 215
    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$100(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDelayBackTimeAfterTtsEnd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$400()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    .line 214
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$100(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$200(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$200(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 220
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$200(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    .line 221
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$300()I

    move-result v1

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$400()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 220
    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onTtsBegin(I)V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTtsBegin mOriginSessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    .line 169
    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$100(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    .line 168
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$100(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 171
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$200(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onTtsEnd(I)V
    .locals 8

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTtsEnd, back time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$300()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mOriginSessionId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    .line 178
    invoke-static {v3}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$100(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessionId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mDelayBackTimeAfterTtsEnd:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$400()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MainActivity"

    .line 177
    invoke-static {v5, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->isHostResumed()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$100(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/basedomain/ui/UIManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/ailabs/basedomain/ui/UIManager;->getRenderViewModel()Landroid/arch/lifecycle/ViewModel;

    move-result-object v6

    .line 189
    :try_start_0
    instance-of v7, v6, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;

    if-eqz v7, :cond_1

    .line 190
    move-object v7, v6

    nop

    nop

    invoke-virtual {v7}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->canJump()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 191
    nop

    nop

    invoke-virtual {v6, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;->jumpNewPage(Landroid/content/Context;)V

    const/4 v0, 0x5

    .line 192
    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$402(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :catch_0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$300()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    .line 200
    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$100(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$400()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " do auto back !!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-static {v5, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$200(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->removeMessages(I)V

    .line 206
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$200(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;

    move-result-object p1

    .line 207
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$300()I

    move-result v1

    invoke-static {}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$400()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    .line 206
    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/ailabs/genie/utils/handle/NoLeakHandler;->sendEmptyMessageDelayed(IJ)Z

    const/4 p1, 0x0

    .line 208
    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$402(I)I

    :cond_2
    :goto_0
    return-void
.end method
