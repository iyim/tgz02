.class Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient$1;
.super Ljava/lang/Object;
.source "GestureClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;I)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    iput p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient$1;->val$type:I

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;->access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureClient;I)V

    return-void
.end method
