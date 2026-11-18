.class Lcom/alibaba/ailabs/basedomain/MainApplication$3;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/MainApplication;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/MainApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/MainApplication;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/MainApplication$3;->this$0:Lcom/alibaba/ailabs/basedomain/MainApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/MainApplication$3;->this$0:Lcom/alibaba/ailabs/basedomain/MainApplication;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/MainApplication;->access$002(Lcom/alibaba/ailabs/basedomain/MainApplication;Landroid/app/Activity;)Landroid/app/Activity;

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/MainApplication$3;->this$0:Lcom/alibaba/ailabs/basedomain/MainApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/MainApplication;->access$100(Lcom/alibaba/ailabs/basedomain/MainApplication;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/MainApplication$3;->this$0:Lcom/alibaba/ailabs/basedomain/MainApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/MainApplication;->access$002(Lcom/alibaba/ailabs/basedomain/MainApplication;Landroid/app/Activity;)Landroid/app/Activity;

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/MainApplication$3;->this$0:Lcom/alibaba/ailabs/basedomain/MainApplication;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/MainApplication;->access$100(Lcom/alibaba/ailabs/basedomain/MainApplication;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
