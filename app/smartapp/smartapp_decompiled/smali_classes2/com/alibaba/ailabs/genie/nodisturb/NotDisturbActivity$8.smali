.class Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$8;
.super Ljava/lang/Object;
.source "NotDisturbActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->enableDNDMode(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$8;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "NotDisturbActivity"

    const-string v1, "DND mode DB update thread start."

    .line 655
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update dnd mode enable status to DB, enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$8;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$8;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity$8;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;->access$100(Lcom/alibaba/ailabs/genie/nodisturb/NotDisturbActivity;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/nodisturb/DataCenterModeAPI;->enableDoNotDisturbMode(Landroid/content/Context;Z)V

    const-string v1, "DND mode DB update thread exit."

    .line 658
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
