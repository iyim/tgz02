.class Lcom/alibaba/genie/shopping/mvp/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/mvp/BaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/mvp/BaseActivity;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity$1;->this$0:Lcom/alibaba/genie/shopping/mvp/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAppContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity$1;->this$0:Lcom/alibaba/genie/shopping/mvp/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V

    return-void
.end method

.method public getSceneInfo(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRResult(Ljava/lang/String;Z)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onASRServiceStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRServiceStatus;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onASRStatusUpdated(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener$ASRStatus;Landroid/os/Bundle;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity$1;->this$0:Lcom/alibaba/genie/shopping/mvp/BaseActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object p1

    return-object p1
.end method
