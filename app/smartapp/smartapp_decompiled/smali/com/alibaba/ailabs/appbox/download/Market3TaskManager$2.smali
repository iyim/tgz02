.class Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$2;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$2;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgress(I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
