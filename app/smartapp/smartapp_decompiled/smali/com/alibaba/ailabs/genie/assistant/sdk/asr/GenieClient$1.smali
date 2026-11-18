.class Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient$1;
.super Ljava/lang/Object;
.source "GenieClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;I)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient$1;->val$type:I

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;I)V

    return-void
.end method
