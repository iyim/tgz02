.class Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$9;
.super Landroid/database/ContentObserver;
.source "NotDisturbActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;Landroid/os/Handler;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$9;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got dnd manual mode enable change msg, selfChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; uri="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotDisturbActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$9;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->getDoNotDisturbModeStatus(Landroid/content/Context;)Z

    move-result p1

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get dnd mode enable status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$9;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 672
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$9;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/broadcast/BroadcastRouter;->sendBroadcast(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method
