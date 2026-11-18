.class Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;
.super Ljava/lang/Object;
.source "NetApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/tts/NetApi$3;->onError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/tts/NetApi$3;

.field final synthetic val$errorCode:Ljava/lang/String;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/tts/NetApi$3;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;->this$0:Lcom/alibaba/ailabs/genie/tts/NetApi$3;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;->val$errorCode:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;->this$0:Lcom/alibaba/ailabs/genie/tts/NetApi$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/tts/NetApi$3;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;->this$0:Lcom/alibaba/ailabs/genie/tts/NetApi$3;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/tts/NetApi$3;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;->val$errorCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/tts/NetApi$3$2;->val$msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
