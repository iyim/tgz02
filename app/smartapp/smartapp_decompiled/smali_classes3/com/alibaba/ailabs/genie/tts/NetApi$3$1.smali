.class Lcom/alibaba/ailabs/genie/tts/NetApi$3$1;
.super Ljava/lang/Object;
.source "NetApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/tts/NetApi$3;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/tts/NetApi$3;

.field final synthetic val$response:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/tts/NetApi$3;Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$1;->this$0:Lcom/alibaba/ailabs/genie/tts/NetApi$3;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$1;->val$response:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$1;->this$0:Lcom/alibaba/ailabs/genie/tts/NetApi$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/tts/NetApi$3;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$1;->this$0:Lcom/alibaba/ailabs/genie/tts/NetApi$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/tts/NetApi$3;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$1;->val$response:Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    :cond_0
    return-void
.end method
