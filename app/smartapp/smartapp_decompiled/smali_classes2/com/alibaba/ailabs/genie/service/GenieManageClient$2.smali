.class Lcom/alibaba/ailabs/genie/service/GenieManageClient$2;
.super Ljava/lang/Object;
.source "GenieManageClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/service/GenieManageClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$2;->this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$2;->this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    invoke-static {p2}, Lcom/alibaba/ailabs/genie/service/IGenieManageInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->access$100(Lcom/alibaba/ailabs/genie/service/GenieManageClient;Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;)V

    .line 360
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected GenieManageInterfaceService="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$2;->this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->access$200(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GenieManageClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$2;->this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->access$100(Lcom/alibaba/ailabs/genie/service/GenieManageClient;Lcom/alibaba/ailabs/genie/service/IGenieManageInterface;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GenieManageClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/service/GenieManageClient$2;->this$0:Lcom/alibaba/ailabs/genie/service/GenieManageClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/service/GenieManageClient;->access$300(Lcom/alibaba/ailabs/genie/service/GenieManageClient;)V

    return-void
.end method
