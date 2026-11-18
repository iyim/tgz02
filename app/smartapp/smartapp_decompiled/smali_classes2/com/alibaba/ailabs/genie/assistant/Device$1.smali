.class Lcom/alibaba/ailabs/genie/assistant/Device$1;
.super Ljava/lang/Object;
.source "Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/Device;->isForbiddenSession()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/Device;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/Device;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/Device$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 327
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/Device$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/Device;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Device;->access$000(Lcom/alibaba/ailabs/genie/assistant/Device;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "\u5c0f\u670b\u53cb\uff0c\u53ee\u53ee\u94c3\u65f6\u95f4\u5230\u4e86\uff0c\u5b66\u4e60\u4e60\u60ef\u8981\u517b\u597d\uff0c\u7cbe\u7075\u8981\u53bb\u4f11\u606f\u5566\uff0c\u6211\u4eec\u4e0b\u6b21\u518d\u89c1\u5427"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->playTTS(Landroid/content/Context;ILjava/lang/String;ZILjava/lang/String;Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$onTtsListener;)I

    return-void
.end method
