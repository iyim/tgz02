.class Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$1;
.super Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;
.source "SmartAppApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->startIoTProcWhenBusinessStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;Landroid/content/Context;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onGatewayStatus(Z)V
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GateWay status callback, online: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartAppApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->access$000(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V

    :cond_0
    return-void
.end method

.method public onUserStatus(Z)V
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User status changed, bindUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartAppApplication"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication$1;->this$0:Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;->access$000(Lcom/alibaba/ailabs/genie/smartapp/SmartAppApplication;)V

    :cond_0
    return-void
.end method
