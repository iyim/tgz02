.class Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$1;
.super Ljava/lang/Object;
.source "VisionClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;

.field final synthetic val$errorCode:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;I)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$1;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient$1;->val$errorCode:I

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/vision/VisionClient;I)V

    return-void
.end method
