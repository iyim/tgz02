.class Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;
.super Ljava/lang/Object;
.source "OssUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;->onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;

.field final synthetic val$data:Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;->val$data:Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "OssUtil"

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;->val$buffer:[B

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;

    iget-object v2, v2, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1;->val$fileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil$1$1;->val$data:Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;->getModel()Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/vision/aicare/OssUtil;->access$000(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
